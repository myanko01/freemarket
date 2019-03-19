class CardsController < ApplicationController
  protect_from_forgery except: :create
  def index

  end

  def new

  end

  def create
    @token = Card.create(user_id:card_params[:user_id], token:card_params[:payjp-token])
    binding.pry

  end

  def destroy

  end
  private
  def card_params
    params.permit(:payjp-token, :user_id)
  end
end
