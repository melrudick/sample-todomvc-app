class ListsController < ApplicationController
  before_action :authentication_required
  

  def index
    # if you're not logged in, you can't see this
    @list = List.new
    # makes instance available in homepage
    @lists = List.all
    # lists all lists
  end

  def show
    @list = List.find(params[:id])
    @item = Item.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      @lists = List.all
      render :index
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
