class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:sessions][:email].downcase)
    if user && user.authenticate(params[:sesssions][:password])
      #Sign user in and redirect to the user's show page
      sign_in user
      redirect_to user
    else
      flash.now[:error] = "Invalid email/password combindation"
      # create an error message and re-render the signin form
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

end
