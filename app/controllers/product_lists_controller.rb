class ProductListsController < ApplicationController
  before_action :set_product_list, only: [:show, :edit, :update, :destroy]
  respond_to :json

  def index
    respond_with @product_list = ProductList.all
  end

  def create
    @product_list = ProductList.new(product_list_params)

    if @product_list.save
      respond_with @product_list
    else
      respond_with @product_list.errors
    end
  end

  def update
    respond_with @product_list = ProductList.update(params[:id], params[:product_list])
  end

  def destroy
    respond_with @product_list = ProductList.destroy(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_list
      @product_list = ProductList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_list_params
      params.require(:product_list).permit(:list_id, :product_id, :quantity)
    end
end
