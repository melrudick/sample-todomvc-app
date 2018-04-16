class ListsController < ApplicationController

  def index
    @list = List.new
    # makes instance available in homepage
    @lists = List.all
    # lists all lists
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
