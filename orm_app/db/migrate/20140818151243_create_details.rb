class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :attributes_name
      t.references :detailable, polymorphic: true
      t.timestamps
    end
  end
end
