class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    puts "$$" * 50
    puts params[:id]
    puts "$$" * 50
    @product = Product.find(params[:id])
  end

  def new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    puts "$$" * 50
    puts params[:product]
    puts params[:product][:name]
    Product.create(name: params[:product][:name], description: params[:product][:description], price: params[:product][:price])
    redirect_to '/products'
  end

  def update
    puts "$$" * 40
    puts params[:id]
    puts "$$" * 40
    p = Product.find(params[:id])
    p.name = params[:product][:name]
    p.description = params[:product][:description]
    p.price = params[:product][:price]
    p.save
    redirect_to '/products'
  end

  def destroy
    puts "$$" * 50
    product = Product.find(params[:id])
    product.destroy
    redirect_to '/products'
  end

end
