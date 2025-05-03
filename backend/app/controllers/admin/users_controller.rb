class Admin::UsersController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!
  before_action :check_admin_role
  before_action :set_user, only: [:show, :edit, :update, :destroy]  # Cargar el usuario antes de las acciones

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to admin_users_path, notice: 'Usuario creado exitosamente.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # @user ya está cargado
  end

  def update
    if @user.update(user_params)
      redirect_to admin_user_path(@user), notice: 'Usuario actualizado correctamente.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    redirect_to admin_users_path, notice: 'Usuario eliminado correctamente.'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :last_name, :city, :address, :email, :password, :password_confirmation, :role)
  end
  
  def check_admin_role
    redirect_to root_path, alert: 'No tienes permisos de administrador' unless current_user.admin?
  end
end
