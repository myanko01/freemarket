class ItemsController < ApplicationController
  def index

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
    @item.images.build
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
    if @item.update(item_params)
      redirect_to root_path, notice: "編集が完了しました"
    else
      render :edit
    end
  end

  private
    def item_params
      params.require(:item).permit(:name, { :user_ids => [] }, :price, :detail, :prefecture_id, :condition_id, :shipping_date_id, :category_id, image_url_attributes: [:content, :_destroy, :id])
    end
end