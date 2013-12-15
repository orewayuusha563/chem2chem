class CompoundSuppliership < ActiveRecord::Base
  belongs_to :compound
  belongs_to :supplier
  attr_accessible :compound_id, :supplier_id
end
