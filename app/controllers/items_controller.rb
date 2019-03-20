class ItemsController < ApplicationController
  def index
    @ladies_items = Item.includes(:images).where(category_id: 1).limit(4)
    @mens_items = Item.includes(:images).where(category_id: 2).limit(4)
    @baby_kids_items = Item.includes(:images).where(category_id: 3).limit(4)
    @cosmetics_perfume_beauty_items = Item.includes(:images).where(category_id: 4).limit(4)
    @chanel_items = Item.includes(:images).where(brand_id: 2).limit(4)
    @louis_vuitton_items = Item.includes(:images).where(brand_id: 3).limit(4)
    @supreme_items = Item.includes(:images).where(brand_id: 4).limit(4)
    @nike_items = Item.includes(:images).where(brand_id: 5).limit(4)
  end

  def show
    @item = Item.find(1)
    @ladies_items = Item.includes(:images).where(category_id: 1).limit(4)
  end

  def new
    # if user_signed_in?
      @item = Item.new
      @item.images.build
    # else
    #   redirect_to new_user_path
    # end
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      flash[:alert] = '※必須項目を入力してください'
      render "new"
    end
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
      params.require(:item).permit(:name, :price, :detail, :category_id, :prefecture_id, :condition_id, :shipping_date_id, :burden_id, images_attributes: [:id, :image_url]).merge(user_id: 1, subcategory_id: 1, subsubcategory: 1)

    end
end
