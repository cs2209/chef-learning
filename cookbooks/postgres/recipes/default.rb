#
# Cookbook:: postgres
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'postgres-server' do
 notifies :run, executes['postgres-init']
end

execute 'postgres-init' do
command 'postgresql-initdb'
 action :nothing
end 

service 'postgresql' do
action [:enable, :start]
end
