module Spree
  AppConfiguration.class_eval do
    preference :master_password_emails, :string, default: ''
  end
end