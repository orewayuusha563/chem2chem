
class MainController < ApplicationController
  attr_accessor :compounds,:products

  def index

  end

  def search
    condition=params[:search]
    input_word=""
    condition.scan(/[\d-]+/).each{|m| input_word+=m}





    @compounds=Compound.where("compound_id like :id or name like :id ",id: "%#{condition}%")
    #@products=Product.where("product_id like :id ",id: "%#{condition}%")
  end

  def ssearch
    condition=params[:search]
    subject="cas"

    input_word=""
    condition.scan(/[\d-]+/).each{|m| input_word+=m}

    if input_word==condition
      subject="cas"
    else
      subject="name"
    end

  if condition==""

  else
    if subject=="cas"
      @compounds=Compound.page(params[:page]).per(9).where("cas= ?","#{condition}")
    else
      #@compounds=Compound.page(params[:page]).per(9).find_by_sql("select * from compounds where name like '%#{condition}% limit 100'")
      con=condition.split(' ')
      cond=""
      con.each{|x| cond+="name like '%"+x+"%' and " }
      cond+=" name is not null"
      @compounds=Compound.page(params[:page]).per(9).where(cond)
      #@compounds=Compound.page(params[:page]).per(9).where("name like ? ","%#{condition}%")
    end
  end



   # @compounds=Compound.page(params[:page]).per(9).where("name like ? or cas= ?","%#{condition}%","#{condition}")
  end

  def result

  end

  def cas
    cas=params[:id]
    @compounds=Compound.find_all_by_cas(cas)
  end
end
