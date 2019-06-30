

#file 'default www' do
#	path '/var/www/html/index.html'
#	content 'HelloWorld V2.0'
#end

#webnodes = search('node', 'role:web')

#webnodes.each do |node|
#	puts node
#end

file "/var/www/html/index.html" do
  extend Apache::EnvironmentHelpers
  content environments_html_list
  notifies :reload, 'service[apache2]', :immediately
end

