class ProductsController < ApplicationController
  def index
  end

  def add
    @cart = session[:cart]
    @cart << params[:product]
    session[:cart]
    render :index
  end
end
