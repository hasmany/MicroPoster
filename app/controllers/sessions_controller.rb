class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:sessions][:email].downcase)
    if user && user.authenticate(params[:sesssions][:password])
      #Sign user in and redirect to the user's show page
    else
      # create an error message and re-render the signin form
    render 'new'
    end
  end

  def destroy
  end

end
