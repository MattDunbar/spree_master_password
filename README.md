SpreeMasterPassword
===================

Supports a master password by allowing the passwords for specified users to be used to gain access to any account.

Installation
------------

Add spree_master_password to your Gemfile:

```ruby
gem 'spree_master_password'
```

Bundle your dependencies:

```shell
bundle
```

Navigate to /admin/master_password_settings/edit on your Spree install and configure a comma separated list of email addresses for accounts that master passwords should be pulled from.