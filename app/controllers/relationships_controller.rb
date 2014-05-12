class RelationshipsController < ApplicationController
  before_action :signed_in_user

=begin
  def create
    @user = User.find(params[:relationship][:followed_id])
    current_user.follow!(@user)
    redirect_to @user
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow!(@user)
    redirect_to @user
  end

=end

  def create
    @user = User.find(params[:relationship][:followed_id])
    current_user.follow!(@user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow!(@user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

  # Private methods are here
  private
   
    def signed_in_user
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
      ## Yukarıdaki kodun anlamı
      # unless signed_in?
      #   flash[:notice] = "Please sign in."
      #   redirect_to signin_url
      # end 
    end

end