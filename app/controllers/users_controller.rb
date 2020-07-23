class UsersController < ApplicationController
  def show
  	  @user = User.find(params[:id])
  	  @user = current_user
      @movies = @user.movies
  end

  def edit
  	  @user = User.find(params[:id])
  end

  def confirm
  end

  def update
  	  @user = User.find(params[:id])
  	  if @user == current_user 
  	  	@user.update(user_params)
  	   redirect_to user_path(@user), notice: "successfully updated user!"
  	  else
  	   render :edit
  	  end
  end

  private
  def user_params
      params.require(:user).permit(:name, :sex, :profile_image, :age, :email, :account_status)
  end
end
