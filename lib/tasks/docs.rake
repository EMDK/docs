desc 'generate offline json index file for offline docs optional "imageVersion" to add version path to images'
task :docs_generate do
	 Docs.generate_json_index
end


