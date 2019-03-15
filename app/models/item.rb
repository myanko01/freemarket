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

  enum shipping_date: [['---',0],['1~2日で発送',1],['2~3日で発送',2],['4~7日で発送',3]]

end
