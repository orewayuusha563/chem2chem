class CasController < ApplicationController

  def display
    cas=params[:id]
    @compound=Compound.find_all_by_cas(cas).first
    if @compound.nil?
      redirect_to root_url
    else
      @compound
    end
  end

  def name
    pname=params[:id]
    #name=name.replace(/%20/,' ')
    @compounds=Compound.find_all_by_name(pname).first

   # @compound=Compound.find_all_by_name(pname).first
    if @compounds.nil?
      redirect_to root_url
    else
      @compounds
    end
  end
end
