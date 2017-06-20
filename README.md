# vault_from_recipe

# Usage
```
kitchen converge
```

# Overview
This cookbook demonstrates updating a Chef Vault from a recipe; setting the content from a library helper method and additionaly using a library helper method to guard the `chef_vault_secret` resource.

It utilizes pre-generated client and node for use in Test Kitchen, in [test/fixtures](test/fixtures) but will work just the same in the real world when searching for real clients and nodes.
