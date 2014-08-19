class PurchaseHistory < ActiveRecord::Base
  belongs_to :person
  has_one :product
  validates :product_id, uniqueness: true
end
