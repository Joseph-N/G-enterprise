class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.references :stock, index: true

      t.timestamps
    end
  end
end
