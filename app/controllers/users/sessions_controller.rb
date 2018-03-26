# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    @str = "log in"
    super
  end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  def destroy
    # @str = "Successfully signed out"
    super
  end

  def after_sign_in_path_for(resource)
    # @str = "Successfully signed in"
    root_path
    super
  end

  def after_sign_out_path_for(resource)
    # @str = "Successfully signed out"
    root_path
    super
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
