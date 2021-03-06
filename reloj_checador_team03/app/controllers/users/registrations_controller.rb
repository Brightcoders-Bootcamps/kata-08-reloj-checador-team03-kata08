# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  include ApplicationHelper
   before_action :configure_sign_up_params, only: [:create]
   before_action :configure_account_update_params, only: [:edit, :update]


   #GET /resource/sign_up
   def new
     super
    format.js   
     
   end

   
  # POST /resource
   def create
     super
     flash.notice = "User was successfully saved." 
     redirect_to users_index_url
   end

  
  # GET /resource/edit
   def edit
     @user1 = User.find(params[:format])
   end

  # PUT /resource
   def update
     super
     flash.notice = "User was successfully updated." 
   end

  # DELETE /resource
   def destroy
     User.find(params[:format]).destroy
     flash.notice = "User was successfully deleted." 
     redirect_to users_index_url
   end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

   protected

  # If you have extra params to permit, append them to the sanitizer.
   def configure_sign_up_params
     devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :lastname])
   end

  # If you have extra params to permit, append them to the sanitizer.
   def configure_account_update_params
     devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name, :lastname, :id])
   end

   def update_resource(resource, params)
    resource = User.find(params[:id]) unless params[:id].nil?
    resource.update(params)
  end

  

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
