class Compound < ActiveRecord::Base
  has_one :dmf
  has_many :compound_supplierships
  has_many :suppliers,:through => :compound_supplierships
  attr_accessible :cas, :compound_id, :mf, :mw, :name, :source, :structure, :seoname

  def has_dmf3
      "DMF is not found"
  end

  def get_dmf(compound)
    cd=Compound.find(compound)
    if cd.nil?
      "Compound is not existed"
    else
      if cd.dmf.nil?
        "DMF is not found"
      else
        "DMF"
      end
    end

  end
  #generate structure graph according to sdf
  def generate_graph
    return "DMF"
  end

  def structure_image
    #
    return false
  end

  def structure_image=(value)

  end


end
