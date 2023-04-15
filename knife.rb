# See https://docs.chef.io/workstation/config_rb/ for more information on knife configuration options


current_dir = File.dirname(__FILE__)

log_level                :info

log_location             STDOUT

node_name                "qasim"

client_key               "#{current_dir}/qasim.pem"

chef_server_url          "https://api.chef.io/organizations/qrafique"

validation_client_name 	  "qrafique-validator"
validation_key           "#{current_dir}/qrafique-validator.pem"
chef_server_url          "https://api.chef.io/organizations/qrafique"
cache_type 'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
