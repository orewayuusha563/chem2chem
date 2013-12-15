class CreateCompounds < ActiveRecord::Migration
  def change
    create_table :compounds do |t|
      t.string :compound_id
      t.text :name
      t.string :cas
      t.text :mf
      t.decimal :mw
      t.text :structure
      t.string :source ,:default=>"0"

      t.timestamps
    end
  end
end
