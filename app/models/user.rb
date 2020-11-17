class User < ApplicationRecord
  attr_accessor :login

  # Validate username uniqueness and send a message when it's already taken.
  # object = person object being validated
  # data = { model: "Person", attribute: "Username", value: <username> }
  validates :username,
    uniqueness: {
      case_sensitive: false,
      message: ->(object, data) do
        " #{data[:value]} is taken already! Please try again."
      end
    }
  
  # Validates that email is not already taken when a new account is created
  validates :email, uniqueness: true, on: :create
  
  # Validates that email is not already taken when an account is updated
  validates :email, uniqueness: true, on: :update


  rolify

  # For each new user, automatically assign them as a general user
  after_create :assign_default_role

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items, dependent: :destroy
  has_many :orders, dependent: :destroy

  def assign_default_role
    self.add_role(:user)
  end

  # Sign-Up Validations
  validate :password_complexity
  
  # Password Security
  def password_complexity
    return if password.blank? || password =~ /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,20}$/

    errors.add :password, 'Password complexity requirement not met.'
  end

  # Allow users to login with username or email
  def self.find_for_database_authentication warden_condition
    conditions = warden_condition.dup
    login = conditions.delete(:login)
    where(conditions).where(
      ["lower(username) = :value OR lower(email) = :value",
      { value: login.strip.downcase}]).first
  end
end
