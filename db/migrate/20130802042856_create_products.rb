class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_id
      t.string :name
      t.string :casno
      t.string :formula
      t.decimal :mweight
      t.text :structure

      t.timestamps
    end
  end
end
