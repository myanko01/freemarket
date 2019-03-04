class Item < ApplicationRecord
  belongs_to :user
  belongs_to :brand
  belongs_to :ship_from
  belongs_to :shipping_date
  belongs_to :condition
  has_many :images
end
