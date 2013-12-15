class CreateDmfs < ActiveRecord::Migration
  def change
    create_table :dmfs do |t|
      t.string :dmfno
      t.string :status
      t.string :type
      t.date :sumbmit_date
      t.string :holder
      t.string :subject
      t.text :details
      t.integer :compound_id

      t.timestamps
    end
  end
end
