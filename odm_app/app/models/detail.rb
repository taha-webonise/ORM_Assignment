class Detail
  include Mongoid::Document
  field :attributes_name, type: String
  field :detail, type: Symbol
  belongs_to :detailable, polymorphic: true
end
