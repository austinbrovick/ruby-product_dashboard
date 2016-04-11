class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
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
