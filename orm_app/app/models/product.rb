class Product < ActiveRecord::Base
  has_many :details, as: :detailable
end