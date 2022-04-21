class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update]

  def index
    # @users = User.all.order(created_at: :desc)
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
  end
  
  def edit
    authorize @user
  end

  def show
  end

  def update
    authorize @user
    if @user.update(user_params)
      redirect_to users_path, notice: "User #{@user.email} was successfully updated."
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.friendly.find(params[:id])
  end

  def user_params
    params.require(:user).permit({role_ids: []})
  end

end