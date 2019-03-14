class Item < ApplicationRecord
  belongs_to :user
  belongs_to :brand
  belongs_to :shipping_date
  belongs_to :condition
  has_many :images
  belongs_to :category

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

  acts_as_nested_set

end
