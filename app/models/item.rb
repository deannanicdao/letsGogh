class Item < ApplicationRecord
  validates :title, length: { minimum: 3, maximum: 25, message: " should be between 3 to 25 characters"}, presence: true
  validates :price, numericality: { minimum: 0, maximum: (100000), message: " must be a valid dollar amount"}, presence: true
  # validates :image, attached: true
  validates :description, length: {minimum: 10, maximum: 250}
  validates :user_id, presence: true

  belongs_to :user 
  validates :user, presence: true
 
  has_one_attached :image, dependent: :destroy
  has_many :orders, dependent: :destroy, inverse_of: :item

  self.per_page = 3
end
