class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address, null: false
      t.string :listing_type, null: false
      t.string :title, null: false
      t.text :description
      t.decimal :price, precision: 10, scale: 2
      t.integer :neighborhood_id, null: false
      t.integer :host_id, null: false

      t.timestamps null: false
    end
  end
end
