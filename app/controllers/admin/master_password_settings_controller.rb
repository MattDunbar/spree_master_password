module Spree
  module Admin
    class MasterPasswordSettingsController < Spree::Admin::BaseController
      def edit
        @preference = :master_password_emails
      end

      def update
          Spree::Config[:master_password_emails] = params[:master_password_emails] if params[:master_password_emails].present?
        flash[:success] = 'Updated Successfully'
        redirect_to edit_admin_master_password_settings_path
      end
    end
  end
end
