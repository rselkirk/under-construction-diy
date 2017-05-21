class UsersController < ApplicationController

  def show
    @current_user = User.find params[:id]
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
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
