class CreateDenominations < ActiveRecord::Migration
  def change
    create_table :denominations do |t|
      t.string :name
      t.integer :quantity
      t.integer :buying_price
      t.references :provider, index: true

      t.timestamps
    end
  end
end
