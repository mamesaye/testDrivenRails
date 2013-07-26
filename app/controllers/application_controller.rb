class ApplicationController < ActionController::Base
  protect_from_forgery
  #create a setter
  def sign_in_as(email)
     session[:current_email] = email
  end
  
  def current_user
     OpenStruct.new(email: session[:current_email])
  end
  
  helper_method :current_user #so view can interact with it
end
