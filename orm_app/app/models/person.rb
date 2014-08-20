class Person < ActiveRecord::Base
  self.inheritance_column = :person_type
  scope :users, -> { where(type: "User")}
  scope :admins, -> { where(type: "Admin")}

  has_one :detail, as: :detailable
  
  has_many :purchase_histories
  has_many :products, through: :purchase_histories

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
end
