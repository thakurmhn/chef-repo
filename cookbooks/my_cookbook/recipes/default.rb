#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#Attribute override example
message = node['my_cookbook']['message']
Chef::Log.info("** Saying what I was told to say : #{message}")

## HOw to create a Template

template '/tmp/message' do 
  source 'message.erb'
  variables(
    hi: 'Hallo',
    world: 'Welt',
    from: node['fqdn']
)
end
 
