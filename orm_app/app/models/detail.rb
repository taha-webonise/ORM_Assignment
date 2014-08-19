class Detail < ActiveRecord::Base
  belongs_to :detailable, polymorphic: true
  validates :attributes_name, presence: true
end
