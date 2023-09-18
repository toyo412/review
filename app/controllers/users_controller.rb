class UsersController < ApplicationController
  before_action :user_params, only: [:create]
  def new
  end

  def create
    @user = User.new(email: params[:email], 
          password: params[:password], name: params[:name])
    if @user.save
      flash[:success]="success"
      redirect_to root_path
    else 
      flash[:danger]="faild"
      redirect_to new_user_path
    end
  end

  private
    def user_params
      params.permit(:name, :password, :email)
    end
end
