desc 'generate Launchpad blog html'
task :lp_generate_blog_html do
  puts "Getting MD in #{AppConfig['blog_md']}"
  puts "Generating Launchpad Docs in: #{AppConfig['blog_md']}"
  apiMD = File.join(AppConfig['blog_md'],"**","*.md")
  apiFiles = Dir.glob(apiMD)
  apiFiles.each do |fileName|
    basename = fileName.gsub(AppConfig['blog_md'],'')
      puts "Processing " + basename
      Launchpad.generate_blog_html(fileName,AppConfig['blog_md'])
    
  end
end

desc 'Generate Launchpad HTML use imageVersion flag and server flag'
task :lp_generate_html do
  puts "Getting MD in #{AppConfig['api_md']}"
  puts "Generating Launchpad Docs in: #{AppConfig['api_md']}"
  apiMD = File.join(AppConfig['api_md'],"**","*.md")
  apiFiles = Dir.glob(apiMD)
  apiFiles.each do |fileName|
    basename = fileName.gsub(AppConfig['api_md'],'')
      puts "Processing " + basename
      Launchpad.generate_html(fileName,AppConfig['api_md'])
    
  end
  guidesMD = File.join(AppConfig['guides_md'],"**","*.md")
  guidesFiles = Dir.glob(guidesMD)
  guidesFiles.each do |fileName|
    basename = fileName.gsub(AppConfig['guides_md'],'')
      puts "Processing " + basename
      Launchpad.generate_html(fileName,AppConfig['guides_md'])
    
  end
end

desc 'publish Launchpad HTMl pass in user= password= ex: rake lp_publish_html user=abc password=abc123 [filelimit=true]'
task :lp_publish_html do
  if ENV['user'].nil? || ENV['password'].nil? || ENV['server'].nil?
  	puts "Wrong format: rake lp_publish_html user=abc password=abc123 server=uat or prod"
  else
    $stdout.sync = true
    # Get Mapping File
    if File.file?("#{AppConfig['launchpad_html']}#{AppConfig['launchpad_mapping']}")
      # Open mapping file that has a string in Ruby hash format
      # this object will be used to hold id/urls of documents created
      url_map = eval(File.read("#{AppConfig['launchpad_html']}#{AppConfig['launchpad_mapping']}"))
      # puts url_map

      puts "Getting HTML in #{AppConfig['launchpad_html']}"
      apiMD = File.join(AppConfig['launchpad_html'],"**","*.html")
      
      apiFiles = Dir.glob(apiMD)
      limitFiles = false
      limitArray = []
      if !ENV['filelimit'].nil? && ENV['filelimit']=='true'
        limitFiles=true
        if File.file?("lpfilelimit")
          limitArray = File.readlines('lpfilelimit').each {|l| l.chomp!}
        end
      end
      if limitFiles && limitArray.empty?
        puts "Missing lpfilelimit file"
      else
        apiFiles.each do |fileName|
          basename = fileName.gsub(AppConfig['launchpad_html'],'')
            html = File.read(fileName)
            publish = true
            if limitFiles
              if !limitArray.include? fileName
                publish=false
              end
            end
            if publish
              puts "Publishing " + basename
              Launchpad.publish_html(fileName,html,url_map,ENV['server'])
            end
          
        end
      end   
      
      
    else
      puts 'ERROR No Mapping File Exists - run rake lp_generate_mapping_index to generate a baseline'
    end
  end
end


desc 'delete docs from LP'
task :lp_delete_docs do
  if ENV['user'].nil? || ENV['password'].nil? || ENV['server'].nil?
  	puts "Wrong format: rake lp_publish_html user=abc password=abc123 server=uat or prod"
  else
    $stdout.sync = true
    # Get Mapping File
    if File.file?("#{AppConfig['launchpad_html']}#{AppConfig['launchpad_mapping']}")
      # Open mapping file that has a string in Ruby hash format
      # this object will be used to hold id/urls of documents created
      url_map = eval(File.read("#{AppConfig['launchpad_html']}#{AppConfig['launchpad_mapping']}"))
      # puts url_map

      puts "Getting HTML in #{AppConfig['launchpad_html']}"
      apiMD = File.join(AppConfig['launchpad_html'],"**","*.html")
      
      apiFiles = Dir.glob(apiMD)
      apiFiles.each do |fileName|
        basename = fileName.gsub(AppConfig['launchpad_html'],'')
          print "."
          Launchpad.delete_doc(fileName,url_map,ENV['server'])
        
      end
    else
      puts 'ERROR No Mapping File Exists - run rake lp_generate_mapping_index to generate a baseline'
    end

  end
end

desc 'generate baseline mapping index file for Lp Url rewrite'
task :lp_generate_mapping_index do
  puts "already created new documents will be added to this mapping"
  # Launchpad.generate_mapping_index
end

desc 'make UAT links same as Prod - use when Prod is dumped into UAT - changes links to UAT link for same docID'
task :lp_sync_mapping_index do
    $stdout.sync = true
    env = ENV['server']
    # Get Mapping File
    if File.file?("#{AppConfig['launchpad_html']}#{AppConfig['launchpad_mapping']}")
      # Open mapping file that has a string in Ruby hash format
      # this object will be used to hold id/urls of documents created
      url_map = eval(File.read("#{AppConfig['launchpad_html']}#{AppConfig['launchpad_mapping']}"))
      # puts url_map
      url_map.each do |key,item|
        
        puts key
        item["id"]["uat"] = item["id"]["prod"].gsub('developer.','developer-uat.')
        item["url"]["uat"] = item["url"]["prod"].gsub('developer.','developer-uat.')
        item["parent"]["uat"]= item["parent"]["prod"].gsub('developer.','developer-uat.')
        url_map[key] = item
      end

      outputfile = "#{AppConfig['launchpad_html']}#{AppConfig['launchpad_mapping']}"
      if File.file?(outputfile)
        puts "**** WARNING: previous mapping existed - last one saved in #{AppConfig['launchpad_mapping']}.syncbackup"
        #save copy
        outputfile_backup = outputfile + '.syncbackup'
        File.rename(outputfile,outputfile_backup)
      end
      File.open("#{outputfile}", 'w') {|f| 
        f.write(url_map.to_s) 
      }

    else
      puts 'ERROR No Mapping File Exists - run rake lp_generate_mapping_index to generate a baseline'
    end

end

desc 'JSON to go in Lp theme child-sharedvars.ftl EMDKContent'
task :lp_generate_theme_content_json do
  if ENV['server'].nil?
    puts "Wrong format: rake lp_generate_theme_content_json server=uat or prod"
  else
    $stdout.sync = true
    env = ENV['server']
    # Get Mapping File
    if File.file?("#{AppConfig['launchpad_html']}#{AppConfig['launchpad_mapping']}")
      # Open mapping file that has a string in Ruby hash format
      # this object will be used to hold id/urls of documents created
      url_map = eval(File.read("#{AppConfig['launchpad_html']}#{AppConfig['launchpad_mapping']}"))
      # puts url_map
      url_map.each do |key,item|
        lpid = key.gsub('/','')
        lpid = lpid.gsub('-','')
        
        lpurl = item['url'][env]
        puts "\"#{lpid}\":\"#{lpurl}\","
      end
    else
      puts 'ERROR No Mapping File Exists - run rake lp_generate_mapping_index to generate a baseline'
    end

  end
end


