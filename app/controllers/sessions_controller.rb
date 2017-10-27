class SessionsController < ApplicationController
  def new
    redirect_to "/home/index" if user_signed_in?
  end

  def create
    log_in 1
    redirect_to "/home/index"
    # user = User.find_by(email: params[:email].downcase)
    # if user && user.authenticate(params[:password])
    #   log_in user
    #   redirect_to "/home/index"
    # else
    #   flash.now[:danger] = '잘못된 이메일과 비밀번호입니다.'
    # end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
