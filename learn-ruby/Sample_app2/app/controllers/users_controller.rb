class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params) # Not the final implementation!
    if @user.save
      flash[:success] = "Welcome #{@user.name} to the Sample App"
      # Handle a successful save.
      redirect_to @user
    else
      render "new"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_comfirmation)
  end
end