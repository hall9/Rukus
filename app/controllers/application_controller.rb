class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def after_sign_in_path_for(resource)
    feed_path
  end

  #********************
  #THIS NEEDS TO BE UNCOMMENTED in the future for security purposes
  #protect_from_forgery with: :exception
  #********************
end
