class CardsController < ApplicationController
  protect_from_forgery except: :create
  def index

  end

  def new
    # binding.pry
    require 'payjp'
    Payjp.api_key = 'sk_test_08cb740d0e8f1625b30fbfec'
    Payjp::Token.create({
      :card => {
        :number => '4242424242424242',
        :cvc => '123',
        :exp_month => '2',
        :exp_year => '2020'
      }},
      {
        'X-Payjp-Direct-Token-Generate': 'true'
      }
      )
  end

  def create
    binding.pry
  end

  def destroy

  end
end
