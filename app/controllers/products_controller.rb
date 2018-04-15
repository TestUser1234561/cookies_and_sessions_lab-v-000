class ProductsController < ApplicationController
  def index
    session[:cart] ||= []
    @cart = session[:cart]
  end

  def add
    session[:cart] ||= []
    @cart = session[:cart]
    @cart << params[:product]
    render :index
  end
end
