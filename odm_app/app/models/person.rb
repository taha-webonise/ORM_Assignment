class Person
  include Mongoid::Document
  field :email, type: String
  field :encrypted_password, type: String
  field :type, type: String
  has_many :details, as: :detailable

  has_many :purchase_histories
end
