class Supplier < ActiveRecord::Base
  has_many :compound_supplierships
  has_many :compounds,:through => :compound_supplierships
  attr_accessible :address, :email, :fax, :image_url, :introduction, :name, :phone, :website

  def compound_list
    list=self.compounds
  end
end
