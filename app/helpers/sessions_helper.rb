module SessionsHelper
  
  def log_in(user)
    session[:uid] = user.uid
  end

  def current_user
    @current_user ||= Owner.find_by(uid: session[:uid])
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:uid)
    @current_user = nil
  end

end