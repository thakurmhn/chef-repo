#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
	service 'httpd' do 
	 action [ :disable, :stop ]
	end

  package 'nginx' do 
	action :install
	end

		service 'nginx' do
		action [ :enable, :start ]
		end
