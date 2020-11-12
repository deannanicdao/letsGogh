class Item < ApplicationRecord
  validates :title, :user_id, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0}, presence: true

  belongs_to :user
  has_many :order_items
  has_many :orders, through: :order_items
  has_one_attached :image, dependent: :destroy
end
