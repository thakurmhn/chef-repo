#
# Cookbook Name:: server_location
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#

#_ipaddr = #{node['ipaddress']}

case node[:ipaddress] 

when '^10.0'

node.default['location']['datacenter'] = 'NED'

when '^10.2'

node.default['location']['datacenter'] = 'SED'

else

node.default['location']['datacenter'] = 'unknown'

end
