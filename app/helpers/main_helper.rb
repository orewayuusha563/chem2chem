module MainHelper

  def get_graph(compound)
    if compound.generate_graph
        1
    else
      image_tag("noimage.png")
    end

  end

  #link_to(image_tag("noimage.png"),compound)
  def has_dmf1(compound)
    return 1
  end
end
