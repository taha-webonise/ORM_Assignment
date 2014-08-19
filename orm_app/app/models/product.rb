class Product < ActiveRecord::Base
  has_many :details, as: :detailable

  has_many :purchase_histories
  has_many :persons, through: :purchase_histories

  validates :cost, presence: true, numericality: { only_integer: true }
end