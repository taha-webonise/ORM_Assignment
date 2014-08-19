class PurchaseHistory
  include Mongoid::Document
  field :purchase_date, type: Date
  field :transaction_type, type: String
  belongs_to: person
  belongs_to: product
end
