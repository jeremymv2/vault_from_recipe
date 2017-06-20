#
# Cookbook:: vault_from_recipe
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#

chef_vault_secret 'clean-energy' do
  data_bag 'green'
  raw_data(node.name => the_password)
  admins 'admin'
  search 'name:automate_runner**'
  action :create_if_missing
  sensitive true
  only_if { thing_on? }
end
