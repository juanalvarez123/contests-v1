class SessionsController < ApplicationController
  layout 'login'

  def new
    if session[:current_user_id]
      redirect_to contests_path
    end
  end

  def create
    user = User.find_by(email: params[:user][:email], password: params[:user][:password])
    if user
      session[:current_user_id] = user.id
      redirect_to contests_path
    else
      @errorMessage = "El correo electrónico o contraseña son inválidos"
      render 'new'
    end
  end

  def delete
    delete_session
  end

  def destroy
    delete_session
  end

  private def delete_session
    session.delete(:current_user_id)
    session[:current_user_id] = nil
    redirect_to login_path
  end
end
