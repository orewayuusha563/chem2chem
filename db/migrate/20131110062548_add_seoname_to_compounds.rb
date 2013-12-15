class AddSeonameToCompounds < ActiveRecord::Migration
  def change
	add_column :compounds,:seoname,:text
  end
end
