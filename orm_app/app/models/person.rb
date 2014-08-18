class Person < ActiveRecord::Base
  self.inheritance_column = :type
  scope :users, -> { where(type: "User")}
  scope :admins, -> { where(type: "Admin")}
end