class ItemsController < ApplicationController
  protect_from_forgery except: :done
  def index
    @ladies_items = Item.includes(:images).where(category_id: 1).order(created_at: :desc).limit(4)
    @mens_items = Item.includes(:images).where(category_id: 2).order(created_at: :desc).limit(4)
    @baby_kids_items = Item.includes(:images).where(category_id: 3).order(created_at: :desc).limit(4)
    @cosmetics_perfume_beauty_items = Item.includes(:images).where(category_id: 4).order(created_at: :desc).limit(4)
    @chanel_items = Item.includes(:images).where(brand_id: 2).order(created_at: :desc).limit(4)
    @louis_vuitton_items = Item.includes(:images).where(brand_id: 3).order(created_at: :desc).limit(4)
    @supreme_items = Item.includes(:images).where(brand_id: 4).order(created_at: :desc).limit(4)
    @nike_items = Item.includes(:images).where(brand_id: 5).order(created_at: :desc).limit(4)
  end

  def show
    @item = Item.find(params[:id])
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
    @image = @item.images.includes(:image_url)
    @item.images.build
  end

  def destroy
    item = Item.find(params[:id])
    if item.user_id == current_user.id
      item.destory
      redirect_to root_path, notice: "商品を削除しました"
    end
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(update_item_params)
      redirect_to root_path, notice: "編集が完了しました"
    else
      render :create
    end
  end

  def purchase
    @id = params[:id]
  end

  def done
    Payjp.api_key = PAYJP_SECRET_KEY
    @card =Card.find_by(user_id: params[:id])
    charge = Payjp::Charge.create(
      :amount => 500,
      :currency => 'jpy',
      :customer => @card.customer_id
      )
  end

  def search
    if params[:l_cat]
      @m_cat = Category.find(params[:l_cat]).children
    else
      @s_cat = Category.find(params[:m_cat]).children
    end
    respond_to do |format|
      format.html
      format.json
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :price, :detail, :category_id, :subcategory_id, :subsubcategory, :prefecture_id, :condition_id, :shipping_date_id, :burden_id, images_attributes: [:id, :image_url]).merge(user_id: current_user.id)
  end
  def update_item_params
    params.require(:item).permit(:name, :price, :detail, :category_id, :subcategory_id, :subsubcategory, :prefecture_id, :condition_id, :shipping_date_id, :burden_id, images_attributes: [:image_url, :created_at, :updated_at, :_destroy, :id]).merge(user_id: current_user.id)
  end
end
