class ProductsController < ApplicationController
  def index
  end

  def add
    @cart = []
    @cart << params[:product]
    @cart = session[:cart]
    render :index
  end
end
