#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package "apache" do
 package_name "apache2" 
  action :install
end 

service "apache2" do
service_name "apache2"
action[:install,:enable]
end 

