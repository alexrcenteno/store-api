class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      quantity: params[:quantity],
    )
    render :show
  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @product.name,
      price: params[:price] || @product.price,
      description: params[:description] || @product.description,
      quantity: params[:quantity] || @product.quantity,
    )
    render :show
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "Product destroyed successfully" }
  end
end
