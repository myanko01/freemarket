class ItemsController < ApplicationController
  def index

  end

  def show
    # 編集可能を確認後削除
    item = Item.find(params[:id])
  end

  def new

  end

  def create
    @item = Item.new(item_params)
  end

  def edit
    @item = Item.find(params[:id])
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
      redirect_to root_path(@item), notice: "編集が完了しました"
    end
  end

  private
    def item_params
      params.require(:item).permit(:name, { :user_ids => [] }, :price, :detail, :prefecture_id, :condition_id)
    end
end
