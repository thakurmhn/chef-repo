default["apache"]["sites"]["web1"] = { "site_title" => "web1 website comming soon", "port" => 80, "domain" => "web1.mhn.com" }
default["apache"]["sites"]["web2"] = { "site_title" => "web2 comming soon!","port" => 80, "domain" => "web2.mhn.com" }


### Making Reciepe to run on both Centos and Ubuntu

default["apache"]["sites"]["web3"] = { "site_title" => "web3 hosted on my Ubuntu", "port" => 80, "domain" => "web3.mhn.com" }

case node["platform"]
when "centos"
	default["apache"]["package"] = "httpd"
when "ubuntu"
	default["apache"]["package"] = "apache2"
end
