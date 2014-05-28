class ProductsController < ApplicationController

  respond_to :json

  def index
    respond_with @list = Product.all
  end
  
end
