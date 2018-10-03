#
# Cookbook:: vault_from_recipe
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#

# https://github.com/chef-cookbooks/chef-vault/blob/master/README.md
#

node.normal['chef-vault']['databag_fallback'] = true

require 'cheffish'

chef_data_bag 'green'

chef_vault_secret 'clean-energy' do
  id 'clean-energy'
  data_bag 'green'
  raw_data('auth' => the_stuff)
  admins 'admin'
  search 'name:automate_runner**'
  action :create_if_missing
  sensitive true
  only_if { thing_on? }
end

secret = chef_vault_item('green', 'clean-energy')

file '/tmp/chef-vault-secret' do
  content secret['auth']
end
