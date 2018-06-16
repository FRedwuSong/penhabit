class UsersController < ApplicationController
  before_action :set_user , only: [:pens, :update, :edit]
  def pens
	  @pens = @user.pens
	end

  def edit
    #redirect_to user_path if current_user != @user
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "資料更新成功"
      redirect_to root_path
    else
      flash[:alert] = @user.errors.full_messages.to_sentence
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name)
  end
end
