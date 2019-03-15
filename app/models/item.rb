class Item < ApplicationRecord
  belongs_to :user
  belongs_to :brand
  has_many :images
  accepts_nested_attributes_for :images
  belongs_to :category

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :condition
  belongs_to_active_hash :shipping_date

end
