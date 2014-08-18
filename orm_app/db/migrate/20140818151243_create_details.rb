class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :attributes_name
      t.string :string

      t.timestamps
    end
  end
end
