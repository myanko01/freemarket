class Item < ApplicationRecord
  belongs_to :user
  belongs_to :brand
  belongs_to :shipping_date
  belongs_to :condition
  has_many :images
  belongs_to :category

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

  enum category_id: [['--', 0],['レディース', 1],['メンズ', 2],['本', 3]]
  enum condition: [['---',""],['新品、未使用', 1],['未使用に近い', 2],['目立った傷や汚れなし', 3],['やや傷や汚れあり', 4],['傷や汚れあり', 5],['全体的に汚れあり', 6]]
  enum price: [['---',],['送料込み(出品者負担)', 1],['着払い(購入者負担)', 2]]
  enum shipping_date: [['---',0],['1~2日で発送',1],['2~3日で発送',2],['4~7日で発送',3]]
end
