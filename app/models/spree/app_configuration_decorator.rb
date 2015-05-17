module Spree
  AppConfiguration.class_eval do
    preference :masterpassword_emails, :string, default: ''
  end
end