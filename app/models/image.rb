class Image < ApplicationRecord
  belongs_to :items, optional: true
end
