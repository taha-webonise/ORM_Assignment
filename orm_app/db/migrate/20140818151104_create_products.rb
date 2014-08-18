class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :id
      t.integer :cost

      t.timestamps
    end
  end
end
