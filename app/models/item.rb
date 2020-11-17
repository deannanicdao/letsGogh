class Item < ApplicationRecord
  # Validations for item attributes
  validates :title, 
    length: { minimum: 3, maximum: 25, message: " should be between 3 to 25 characters"}, 
    presence: true,
    uniqueness: {
      case_sensitive: false,
      message: ->(object, data) do
        " #{data[:value]} is taken already! Please try again."
      end
    }

  validates :price, 
    numericality: { minimum: 0, maximum: (100000), message: " must be a valid dollar amount"}, 
    presence: true
    
  validates :description, length: {minimum: 10, maximum: 250}
  validates :user_id, presence: true
  
  # Validate and associate that an item must belong to a user
  belongs_to :user 
  validates :user, presence: true
  
  # Association with an item has one artwork attached and its presence is validated via Active Storage Validations gem
  has_one_attached :image, dependent: :destroy
  validates :image, attached: true

  # Association (one to many - item to orders) with orders and items is validated and if an item is destroyed, all its associated orders are also destroyed
  has_many :orders, dependent: :destroy, inverse_of: :item

  # Pagination on items (max 3 per page)
  self.per_page = 3
end
