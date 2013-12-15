class CompoundsController < ApplicationController
  # GET /compounds
  # GET /compounds.json
  def index
    @compounds = Compound.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: CompoundsDatatable.new(view_context) }
    end
  end



  # GET /compounds/1
  # GET /compounds/1.json
  def show
    @compound = Compound.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @compound }
    end
  end

  # GET /compounds/new
  # GET /compounds/new.json
  def new
    @compound = Compound.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @compound }
    end
  end

  # GET /compounds/1/edit
  def edit
    @compound = Compound.find(params[:id])
  end

  # POST /compounds
  # POST /compounds.json
  def create
    @compound = Compound.new(params[:compound])

    respond_to do |format|
      if @compound.save
        format.html { redirect_to @compound, notice: 'Compound was successfully created.' }
        format.json { render json: @compound, status: :created, location: @compound }
      else
        format.html { render action: "new" }
        format.json { render json: @compound.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /compounds/1
  # PUT /compounds/1.json
  def update
    @compound = Compound.find(params[:id])

    respond_to do |format|
      if @compound.update_attributes(params[:compound])
        format.html { redirect_to @compound, notice: 'Compound was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @compound.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compounds/1
  # DELETE /compounds/1.json
  def destroy
    @compound = Compound.find(params[:id])
    @compound.destroy

    respond_to do |format|
      format.html { redirect_to compounds_url }
      format.json { head :no_content }
    end
  end
end
