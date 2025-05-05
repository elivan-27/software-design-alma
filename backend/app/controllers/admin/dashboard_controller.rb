class Admin::DashboardController < ApplicationController
  layout "admin"
  before_action :authenticate_user!  # Asegura que el usuario esté autenticado
  before_action :check_admin_role    # Verifica si el usuario tiene el rol de administrador

  def index
    # Lógica para el dashboard del administrador
    @users = User.all
  end

  private

  def check_admin_role
    redirect_to root_path, alert: "No tienes permisos de administrador" unless current_user.admin?
  end
end
