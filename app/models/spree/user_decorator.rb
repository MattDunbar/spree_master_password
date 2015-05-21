module Spree
  User.class_eval do
    alias_method :valid_password?, :valid_password_original?

    def valid_password?(password)
      if Spree::Config.master_password_emails.split(',').exclude?(self.email)
        Spree::Config.master_password_emails.split(',').each do |master_email|
          return true if Spree::User.find_by(email: master_email).valid_password?(password)
        end
      end
      return valid_password_original?(password)
    end
  end
end
