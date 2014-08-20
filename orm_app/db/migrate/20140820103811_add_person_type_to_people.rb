class AddPersonTypeToPeople < ActiveRecord::Migration
  def change
    add_column :people, :person_type, :string
  end
end
