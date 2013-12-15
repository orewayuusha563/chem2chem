class CreateCompoundSupplierships < ActiveRecord::Migration
  def change
    create_table :compound_supplierships do |t|
      t.integer :compound_id
      t.integer :supplier_id

      t.timestamps
    end
  end
end
