class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone
      t.string :fax
      t.text :introduction
      t.string :image_url
      t.string :website

      t.timestamps
    end
  end
end
