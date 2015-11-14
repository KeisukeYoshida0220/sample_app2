class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_or user #デフォかリクエストのページに移動する。nilならデフォに移動。
    else
      flash.now[:error] = 'Invalid email/password combination' # 誤りあり!
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url #最初に見れるサイトに移動する。sessionが切れる。
  end
end