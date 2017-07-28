class UsersController < ApplicationController
  def show
    if User.where(id: params[:id]).empty?
      redirect_to root_path
      return
    end
    @user = User.find(params[:id])
  end

end
