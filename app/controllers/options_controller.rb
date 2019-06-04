class OptionsController < ApplicationController
  layout 'admin'

  def index
    if session[:current_user_id]
      @user = User.find(session[:current_user_id])
      @option = Option.new

      option = Option.find(1)
      @option.value_BATCH_PROCESS = option.value.eql?('true') ? 1 : 0

      option = Option.find(2)
      @option.value_EMAIL_SERVICE = option.value.eql?('true') ? 1 : 0
    else
      redirect_to login_path
    end
  end

  def update
    if session[:current_user_id]
      @user = User.find(session[:current_user_id])
      @option = Option.new

      option = Option.find(1)
      option.update_attribute(:value, (params[:option][:value_BATCH_PROCESS]).eql?('1') ? 'true' : 'false')
      @option.value_BATCH_PROCESS = option.value.eql?('true') ? 1 : 0

      option = Option.find(2)
      option.update_attribute(:value, (params[:option][:value_EMAIL_SERVICE]).eql?('1') ? 'true' : 'false')
      @option.value_EMAIL_SERVICE = option.value.eql?('true') ? 1 : 0

      render 'index'
    else
      redirect_to login_path
    end
  end
end
