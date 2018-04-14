class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = Owner::find_by(email: params[:session][:email].downcase)
    if user && (user.uid == params[:session][:password])
      log_in user
      redirect_to owner_path(user.id)
    else
      render 'new', notice: 'Invalid username or password'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end