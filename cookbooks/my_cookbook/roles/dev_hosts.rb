name "dev_hosts"
description "This role contains hosts which should print their messages in German"
run_list "recipe[my_cookbook]"
default_attributes "my_cookbook" => { 
"message" => "Hello",
"world" =>  "Welt" 

}
