class CreateShipments < ActiveRecord::Migration[7.0]
  def change
    create_table :shipments do |t|
      t.string :item
      t.string :price
      t.references :users, index: true, foreign_key: true
      t.timestamps
    end
  end
end
