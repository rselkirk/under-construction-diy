class UsersController < ApplicationController

  def show
    @current_user = User.find params[:id]
    @user_id = @current_user.id
    @projects = Project.joins("join project_statuses on projects.id = project_statuses.project_id").where("project_statuses.saves='t' and project_statuses.user_id=#{@user_id}")
  
  end

  def new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to '/'
      else
        flash.now[:error] = @user.errors.full_messages.first(5).join(', ')
        render :new
      end
    end

  def destroy
    @user.destroy
  end

  private

  def user_params
    params.require(:product).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
