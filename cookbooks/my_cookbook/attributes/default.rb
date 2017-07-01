#default['my_cookbook']['message'] = 'Hello World'
default['my_cookbook']['message'] = "#{node['my_cookbook']['Hi']}
#{node['my_cookbook']['world']}!"
