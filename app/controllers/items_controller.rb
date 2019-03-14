class ItemsController < ApplicationController
  def index
    @items = Item.includes(:images).limit(4)
  end

  def show
    
  end

  def new

  end

  def create
    @item = Item.new(item_params)
  end

  def edit
    @item = Item.find(params[:id])
    @image = Image.find(params[:id])
  end

  def destroy
    item = Item.find(params[:id])
    if item.user_id == current_user.id
      item.destory
       redirect_to '/items/items-list', notice: "商品を削除しました"
    end
  end

  def update
    @item = Item.find(params[:id])
    @image = Image.find(params[:id])
    if @item.update(item_params)
      redirect_to root_path(@item, @image), notice: "編集が完了しました"
    end
  end

  private
    def item_params
      params.require(:item).permit(:name, { :user_ids => [] }, :price, :detail, :prefecture_id, :condition_id, :shipping_date_id, :category_id)
    end
end