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

Create a comma separated list of users who will have their password act as a master password and set it to the Spree::Config.masterpassword_emails preference in an intializer:

```ruby
Spree.config do |config|
  config.masterpassword_emails = 'spree@example.com,spree2@example.com,spree3@example.com'
end
```

Please note that each password creates additional database lookups on the login. On high traffic sites you should limit to only a few master password emails at most.
