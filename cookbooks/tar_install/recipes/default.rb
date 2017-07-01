#
# Cookbook Name:: tar_install
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

r_file = "apbs-1.3-source.tar.gz"

remote_file "/opt/tmp/#{r_file}" do
  source "http://pkgs.fedoraproject.org/repo/pkgs/apbs/apbs-1.3-source.tar.gz/f99a505365f07f6853979cfe2ef23365/#{r_file}"
  end

  bash 'extract_tar' do
	cwd '/opt/tmp/'
	code <<-EOF
	tar -zxvf apbs-1.3-source.tar.gz
	cd /opt/tmp/apbs-1.3-source
	configure
	make
	make install
  EOF
#  only_if {File.exist?(/opt/tmp/apbs-1.3-source.tar.gz)}
end
