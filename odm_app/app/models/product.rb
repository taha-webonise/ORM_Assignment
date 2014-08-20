class Product
  include Mongoid::Document
  field :cost, type: Integer
  has_many :details, as: :detailable
  
  has_many :purchase_histories
  
  def people
  	Person.in(id: purchase_histories.map(&:person_id))
  end
end
