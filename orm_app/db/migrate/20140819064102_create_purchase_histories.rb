class CreatePurchaseHistories < ActiveRecord::Migration
  def change
    create_table :purchase_histories do |t|
      t.date :purchase_date
      t.string :transaction_type
      t.belongs_to :person
      t.belongs_to :product

      t.timestamps
    end
  end
end
