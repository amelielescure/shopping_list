class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]
  respond_to :json

  def index
    respond_with @list = List.where(:user_id => current_user.id.to_i)
  end

  def show
    respond_with @list = List.find(params[:id])
  end

  def new
    respond_with @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user

    if @list.save
      respond_with @list
    else
      respond_with @list.errors
    end
  end

  def update
    respond_with @list = List.update(params[:id], list_params)
  end

  def destroy
    respond_with @list = List.destroy(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_params
      params.require(:list).permit(:name, :nb_product)
    end
end
