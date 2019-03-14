class ItemsController < ApplicationController
  def index
    @items = Item.includes(:images).limit(4)
  end

  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

end
