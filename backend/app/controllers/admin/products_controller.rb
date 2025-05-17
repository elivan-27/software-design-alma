class Admin::ProductsController < ApplicationController
  layout "admin"
  before_action :set_product, only: [ :show, :edit, :update, :destroy ]
  before_action :set_category


  def index
    @products = @category.products.includes(:category).order(created_at: :desc)
  end

  def show
  end

  def new
    @category = Category.find(params[:category_id])
    @product = @category.products.build
  end

  def create
    @category = Category.find(params[:category_id])
    @product = @category.products.build(product_params)
    if @product.save
      redirect_to admin_category_products_path(@category), notice: "Producto creado correctamente."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to admin_category_products_path, notice: "Producto actualizado exitosamente."
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to admin_category_products_path, notice: "Producto eliminado correctamente."
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def set_category
    @category = Category.find_by(id: params[:category_id])
    redirect_to admin_categories_path, alert: "Categoría no encontrada" unless @category
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :stock, :category_id, :image, sizes: [])
  end
end
