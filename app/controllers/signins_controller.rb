class SigninsController < ApplicationController
  layout 'login'

  def new
    @user = User.new
    @success_message = nil
  end

  def create
    @user = User.new(request_attributes)
    if @user.save
      session[:current_user_id] = @user.id
      redirect_to contests_path
    else
      render 'new'
    end
  end

  private def request_attributes
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
