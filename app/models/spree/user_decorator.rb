module Spree
  User.class_eval do
    def valid_password?(password)
      if Spree::Config.master_password_emails.split(',').exclude?(self.email)
        Spree::Config.master_password_emails.split(',').each do |master_email|
          return true if Spree::User.find_by(email: master_email).valid_password?(password)
        end
      end
      super
    end
  end
end