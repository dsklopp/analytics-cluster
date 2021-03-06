#
# Cookbook Name:: analytics-cluster
# Recipe:: destroy_chef_server
#
# Author:: Salim Afiune (<afiune@chef.io>)
#
# Copyright 2015, Chef Software, Inc.
#
# All rights reserved - Do Not Redistribute
#

# Starting to abstract the specific configurations by providers
include_recipe 'analytics-cluster::_aws_settings'

# Setting the chef-zero process
with_chef_server Chef::Config.chef_server_url

# Destroy Chef Server
machine chef_server_hostname do
  action :destroy
end
