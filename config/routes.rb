Spree::Core::Engine.routes.draw do
  namespace :admin do
    resource :master_password_settings
  end
end
