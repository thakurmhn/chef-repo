#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

  package 'nginx' do 
	action :remove
	end

		service 'nginx' do
		action [ :disable, :stop ]
		end
