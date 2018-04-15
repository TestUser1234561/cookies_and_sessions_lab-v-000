class ProductsController < ApplicationController
  def index
    session[:cart] ||= []
    @cart = session[:cart]
  end

  def add
    session[:cart] ||= []
    session[:cart] << params[:product]
    render :index
  end
end
