class ProductsController < ApplicationController
  def index
  end

  def add
    session[:cart] << params[:product]
    cart = session[:cart]
    render :index
  end
end
