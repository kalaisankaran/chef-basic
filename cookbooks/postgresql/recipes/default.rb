#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'postgresql-server' do
	notifies :run, 'execute[postgresql-init]'
end

execute 'postgresql-init' do
	command 'postgresql-setup initdb'
	action :noting
end

service 'postgresql' do
	action [:enable, :start]
end
