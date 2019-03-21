class CardsController < ApplicationController
  protect_from_forgery except: :create
  def index
    card = Card.find_by(user_id: params["user_id"])
    if card.present?
      Payjp.api_key = PAYJP_SECRET_KEY
      customer = Payjp::Customer.retrieve(card["customer_id"])
      @card = customer.cards.retrieve(customer["default_card"])
    end
  end

  def new
  end

  def create
    Payjp.api_key = PAYJP_SECRET_KEY
    customer = Payjp::Customer.create(
      description: 'test'
      )
    @card = customer.cards.create(
      card: params["payjp-token"]
      )
    Card.create(user_id: params["user_id"], customer_id: customer["id"])
  end

  def destroy

  end
end
