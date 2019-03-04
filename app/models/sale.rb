class Sale < ApplicationRecord
  belongs_to :user
  belongs_to :item
  enum status:{default: 0,nonPayment:1,undispache:2,dispached:3, buyerEvaluated:4, closed:5}
end
