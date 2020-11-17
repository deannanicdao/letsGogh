class Order < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  belongs_to :item
  validates :item, presence: true

  self.per_page = 3
end
