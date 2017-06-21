# vault_from_recipe

# Usage
```
kitchen converge
```

# Overview
This cookbook demonstrates updating a Chef Vault from a recipe; setting the content from a library helper method and additionaly using a library helper method to guard the `chef_vault_secret` resource.

It utilizes pre-generated client and node for use in Test Kitchen, in [test/fixtures](test/fixtures) but will work just the same in the real world when searching for real clients and nodes.

# ACL Permissions
In order for clients (nodes) to be able to update a Chef Vault they will need to have permissions granted on the data container.
To do this you can use `knife-acl` plugin.  Please read about it [here](http://github.com/chef/knife-acl)

Users that are in the admin group do not need this permission added as they already have the permissions from the group.

Assuming that your node's client name is `test-node` and your Chef Vault name is `my_secrets`:
```
chef gem install knife-acl
knife group create secrets_writers
knife acl add group secrets_writers data my_secrets create,read,update,delete
knife group add client test-node secrets_writers
```
