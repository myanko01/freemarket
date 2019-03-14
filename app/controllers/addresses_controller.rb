class AddressesController < ApplicationController
  
  def new
    @user = User.find(current_user.id)
    @address = Address.new
  end
  
  def create
    
  end

  def edit

  end

  def update
    
  end
end
