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
    puts params[:product]
    puts params[:product][:name]
    Product.create(name: params[:product][:name], description: params[:product][:description], price: params[:product][:price])
    redirect_to '/products'
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
