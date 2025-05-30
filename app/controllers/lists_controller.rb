class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update]

  def index
    @lists = List.all
    @list = List.new
  end

  def show
    @bookmark = Bookmark.new
    @review = Review.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      @lists = List.all
      render "lists/index", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @list.update(list_params)
    @list.save
    redirect_to list_path(@list)
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
