class ApplicationController < ActionController::Base
  protect_from_forgery
  #create a setter
  def sign_in_as(email)
     session[:current_email] = email
  end
  
  def current_user
     openStruct.new(email: session[:current_email])
  end
  
  helper_method :current_user
end
