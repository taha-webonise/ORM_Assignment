class Person
  include Mongoid::Document
  field :email, type: String
  field :encrypted_password, type: String
  field :type, type: String
  has_many :details, as: :detailable
  has_many :purchase_histories

  def products
  	Product.in(id: purchase_histories.map(&:product_id))
  end
end
