class Admin::UsersController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!
  before_action :check_admin_role

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  def check_admin_role
    redirect_to root_path, alert: 'No tienes permisos de administrador' unless current_user.admin?
  end
end
