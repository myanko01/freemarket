class AddressesController < ApplicationController
  
  def new
    @user = User.find(current_user.id)
    @address = Address.new
  end
  
  def create
    @address = Address.new(address_params)
    @address.save
    render 'users/done'
  end

  def edit

  end

  def update
    
  end

  private
  def address_params
    params.required(:address).permit(:name, :name_kana, :zip, :prefecture, :address_detail, :phone_number).merge(user_id: current_user.id)
  end
end
