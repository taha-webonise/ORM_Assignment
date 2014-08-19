class Product < ActiveRecord::Base
  has_many :details, as: :detailable
  has_one :purchase_history
  has_one :person, through: :purchase_history
end