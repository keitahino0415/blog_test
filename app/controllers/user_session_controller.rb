class UserSessionController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password], params[:password_confirmation])
      redirect_back_or_to(:users, notice: 'login successful!!!')
    ellse
      flash.now[:alert] = 'login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(:users, notice: 'logged out!')
    
  end

end
