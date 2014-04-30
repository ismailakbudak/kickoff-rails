class UsersController < ApplicationController
 
  def show
    @user = User.find(params[:id])
  end

  def new
  	 @user = User.new 
  end

  def create
    @user = User.new( user_params )    
    if @user.save
       flash[:success] = "Welcome to the Sample App!" # flash message	
       redirect_to @user #user has been saved succesfully
    else
      render 'new'
    end
  end

  # Private methods are here
  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end

end
