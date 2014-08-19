class PurchaseHistory < ActiveRecord::Base
  belongs_to :person
  belongs_to :product

  validates :product_id, presence: true
  validates :person_id, presence: true
  validates :purchase_date, presence: true
  validates :transaction_type, presence: true
end