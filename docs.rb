require 'xmlsimple'
require 'rdiscount'
require 'rest-client'
require 'json'
class Docs
	def self.generate_json_index
	  index_hash = []
	  puts "Generating JSON Index: #{AppConfig['offline_eb_mapping']}"
	  apiMD = File.join(AppConfig['api_md'],"**","*.md")
	  apiFiles = Dir.glob(apiMD)
	  api_mapping = []
	  apiFiles.each do |fileName|
	    basename = fileName.gsub(AppConfig['api_md'],'')
	    parent = Pathname(fileName.gsub(basename,'')).each_filename.to_a.last
      	md = File.read(fileName)
	    if md.match(/#(.*)$/).nil? 
	    	title = basename.gsub('.md','')
	    else
		    title = md.match(/#(.*)$/)[1]
	    end
		
	    puts "\n\nProcessing API: #{title} in #{basename}"
	    # Change links in MD to use hash scheme #parent folder-filename
	    md = convert_api_links md,basename.gsub('.md','')
	    hash_object =   {
	    	:key => "#{parent}-#{basename.gsub('.md','')}",
	      :name => title,
	      :md => md
	    }
	    api_object = {
	    	:name => hash_object[:name],
	    	:link => "##{hash_object[:key]}"
	    }
	    api_mapping.push api_object
	    index_hash.push hash_object    
	  end

	  guidesMD = File.join(AppConfig['guides_md'],"**","*.md")
	  guidesFiles = Dir.glob(guidesMD)

	  guidesFiles.each do |fileName|
	    basename = fileName.gsub(AppConfig['guides_md'],'')
	    parent = Pathname(fileName.gsub(basename,'')).each_filename.to_a.last
	    hash_key = parent + "-"+ basename.gsub('/','-')
      	md = File.read(fileName)
	    if md.match(/#(.*)$/).nil? 
	    	title = basename.gsub('.md','')
	    else
		    title = md.match(/#(.*)$/)[1]
	    end
		
	    puts "\nProcessing Guide: #{title} in #{basename}"

	    md = replace_url md
	    md = replace_images md
	    md = replace_tables md
	    hash_object =   {
	    	:key => "#{hash_key.gsub('.md','')}",
	      :name => title,
	      :md => md
	    }
	    index_hash.push hash_object    
	  end

	  outputfile = "#{AppConfig['offline_eb_mapping']}"
		File.open("#{outputfile}", 'w') {|f| 
			f.write("var docs = #{index_hash.to_json};") 
		}
		# outputfile = "#{AppConfig['offline_eb_mapping']}.menu_api.js"
		# File.open("#{outputfile}", 'w') {|f| 
		# 	f.write("items : #{api_mapping.to_json}") 
		# }
	end

	#this method will change the links in Javadocs to links
	# that follow the offline format
	def self.convert_api_links (md,classname)
		# api links will be in standard javadocs format
		md_mod = md.gsub(/\[.*?\]\((.*?)\)/) do |m|
	      match = $1
	        
	      if match.start_with?('#')
	      	# Links that are within same 'class' look like
			# #EMDKResults
			# need to  change to api-[CurrentFile]?EMDKResults
 	        new_url = "#api-#{classname}#{match.gsub('#','?')}"
 	        puts "#{match} => #{new_url}"
	        
	        m.gsub("(#{match})","(#{new_url})")
	      else
			# [package.class#member](label)
			# EMDKManager.EMDKListener => api-EMDKManager-EMDKListener
			# member could be fields, methods, etc
			# methods may have several oberloads so link will be
			# complete method description
	      	link_class = match
	      	link_jump = ''
	      	if match.include?('#')
	      		# then the link has a jump
	      		link_class = match.split("#").first
	      		link_jump = "?#{match.split("#").last}"
	      	end

	      	if isEnum(link_class)
	      		link_class = match.gsub('.'+match.split(".").last,'')
	      		link_jump = "?#{match.split(".").last}" 
	      	end

	      	#change dots to dashes
 		    link_class = link_class.gsub('.','-')
 	        new_url = "#api-#{link_class}#{link_jump}"
 	        puts "#{match} => #{new_url}"
	        
	        m.gsub("(#{match})","(#{new_url})")


	      end
	    end
		return md_mod    
		# ENUMS in Class need special handling they look like
		# EMDKManager.FEATURE_TYPE
	end

	def self.isEnum(className)
		# Classname.blah

		# Check if class file exists
		fileCheck = AppConfig['api_md']+className.gsub('.','-')+'.md'
		if File.file?(fileCheck)
			puts "\n ---- NO ENUM"
			return false
		else
			#otherwise it is an enum 
			puts "\n ----  ENUM"
			return true
		end


	end

	def self.replace_url (md)

	    md_mod = md.gsub(/\[.*?\]\((.*?)\)/) do |m|
	      match = $1
	      # if starts with ../ then use the string minus the ../ for the index
	      if match.start_with?('../') 
	        #strip leading path
	        new_url = match.gsub('../','')
	        #replace seperator
	        new_url.gsub!('/','-')
	        # add a hash symbol in fron
	        # new_url => #parentFolder-filename
	        new_url = "##{new_url}"
	        puts "#{match} => #{new_url}"
	        m.gsub(match,new_url)
	      else
	      	#leave alone
	      	m
	      end
	    end
		return md_mod    
  	end

  	def self.replace_images(md)

  		md_mod = md
  		#if imageVersion is passed in via Rake command
  		# then the images for offline content will go in a subfolder
  		# of the images folder. This is to account
  		# for different images for each version
  		# the guides will always have [img](images/theimage.jpg)
  		# will be replaced by [img](images/ENV['imageVersion']/theimage.jpg)
		if !ENV['imageVersion'].nil?
			md_mod = md.gsub(/\[img?\](\(.*?)\)/) do |m|
				match = $1
				#strip leading path
				new_url = match.gsub('(images/',"(#{ENV['imageVersion']}/")
				# puts "#{match} => #{new_url}"
				m.gsub(match,new_url)
		    end
  		end
		return md_mod    			

  	end

  	def self.replace_tables(md)

  		# replace any hardcode table html with some
  		# offline specific styling like Bootstrap and FontAwesome
  		# <table> => <table class='table'>
  		md_mod = md.gsub(/<table>/i, '<table class="table">')
  		# <TD>X => <TD><i class="fa fa-check-circle">
		md_mod = md_mod.gsub(/<td>X<\/td>/i, '<td><i class="fa fa-check-circle"></i>')
  		# <TD>- => <TD><i class="fa fa-times-circle">
		md_mod = md_mod.gsub(/<td>\-<\/td>/i, '<td><i class="fa fa-times-circle"></i>')
  		# <TD>* => <TD><i class="fa fa-times-circle">
		md_mod = md_mod.gsub(/<td>\*<\/td>/i, '<td><i class="fa fa-asterisk"></i>')
  		
		return md_mod    			

  	end
end
