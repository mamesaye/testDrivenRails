class SessionsController < ApplicationController

def create
  sign_in_as params[:session][:email_address]
#  redirect_to root_path
   redirect_to todos_path
end

end
