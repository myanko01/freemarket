class CardsController < ApplicationController
  protect_from_forgery except: :create
  def index

  end

  def new
  end

  def create
    Payjp.api_key = PAYJP_SECRET_KEY
    customer = Payjp::Customer.create(
      description: 'test'
      )
    customer.cards.create(
      card: params["payjp-token"]
      )
    Card.create(user_id: params["user_id"], customer_id: customer["id"])
  end

  def destroy

  end
end
