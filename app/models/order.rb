class Order < ApplicationRecord
  belongs_to :user
  # has_many :order_items
  # has_many :items, through: :order_items, dependent: :destroy
  belongs_to :item
end
