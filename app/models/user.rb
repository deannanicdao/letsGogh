class User < ApplicationRecord
  attr_accessor :first_name, :last_name, :dob
  rolify
  after_create :assign_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items, dependent: :destroy

  def assign_default_role
    self.add_role(:user)
  end

  # Cloudinary Profile Image
  has_one_attached :profile_image

  # Sign-Up Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :dob, presence: true
  validate :password_complexity
  
  # Password Security
  def password_complexity
    return if password.blank? || password =~ /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,20}$/

    errors.add :password, 'Password complexity requirement not met.'
  end
end
