class CompoundsDatatable
  # To change this template use File | Settings | File Templates.
  delegate :params, :h, :link_to,to: :@view

  def initialize(view)
    @view=view
  end

  def as_json(option={})
    {
        sEcho: params[:sEcho].to_i,
        iTotalRecords: Compound.count,
        iTotalDisplayRecords: compounds.total_entries,
       #iTotalDisplayRecords: Compound.find_all  ,
        aaData: data
    }
  end

private
  def data
    compounds.map do |compound|
      [
          link_to(compound.name,compound),
          h(compound.cas),
          h(compound.mf),
          h(compound.mw) ,
          h(compound.structure) ,
          h(compound.source)
      ]
    end
  end

  def compounds
    @compounds ||= fetch_compounds
  end

  def fetch_compounds
    compounds=Compound.order("#{sort_column} #{sort_direction}")
    compounds=compounds.page(page).per_page(per_page)
    if params[:sSearch].present?
      compounds=compounds.where("name like :search or cas like :search or mf like :search",search: "%#{params[:sSearch]}%")
    end
    compounds
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    #columns = %w[name category released_on price]
    columns = %w[name cas mf mw structure source]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end

end