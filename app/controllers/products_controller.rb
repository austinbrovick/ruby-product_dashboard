class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    puts params[:id]
    @product = Product.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
    puts "$$" * 50
    product = Product.find(params[:id])
    product.destroy
    redirect_to '/products'
  end
end
