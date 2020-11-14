class Item < ApplicationRecord
  validates :title, length: {minimum: 3, maximum: 25, message: " should be between 3 to 25 characters"}, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0, message: " must be a valid dollar amount"}, presence: true
  # validates :image, attached: true
  validates :description, length: {minimum: 10, maximum: 250}
  validates :user_id, presence: true

  belongs_to :user
  has_many :orders, through: :order_items, dependent: :destroy
  has_one_attached :image, dependent: :destroy
end
