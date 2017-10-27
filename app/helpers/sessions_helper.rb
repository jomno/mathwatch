module SessionsHelper
  #세션 생성
  def log_in(user)
    # session[:user_id] = user.id
    session[:user_id] = user
  end
  #현재 유저 확인
  def current_user
    @current_user = User.find_by(id: session[:user_id])
  end
  #유저가 로그인했는지?
  def user_signed_in?
    !current_user.nil?
  end
  def log_out
    session[:user_id] = 0
  end
end
