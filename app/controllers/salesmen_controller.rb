class SalesmenController < ApplicationController
  # GET /salesmen
  # GET /salesmen.json
  def index
    @salesmen = Salesman.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @salesmen }
    end
  end

  # GET /salesmen/1
  # GET /salesmen/1.json
  def show
    @salesman = Salesman.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @salesman }
    end
  end

  # GET /salesmen/new
  # GET /salesmen/new.json
  def new
    @salesman = Salesman.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @salesman }
    end
  end

  # GET /salesmen/1/edit
  def edit
    @salesman = Salesman.find(params[:id])
  end

  # POST /salesmen
  # POST /salesmen.json
  def create
    @salesman = Salesman.new(params[:salesman])

    respond_to do |format|
      if @salesman.save
        format.html { redirect_to @salesman, notice: 'Salesman was successfully created.' }
        format.json { render json: @salesman, status: :created, location: @salesman }
      else
        format.html { render action: "new" }
        format.json { render json: @salesman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /salesmen/1
  # PUT /salesmen/1.json
  def update
    @salesman = Salesman.find(params[:id])

    respond_to do |format|
      if @salesman.update_attributes(params[:salesman])
        format.html { redirect_to @salesman, notice: 'Salesman was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @salesman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salesmen/1
  # DELETE /salesmen/1.json
  def destroy
    @salesman = Salesman.find(params[:id])
    @salesman.destroy

    respond_to do |format|
      format.html { redirect_to salesmen_url }
      format.json { head :no_content }
    end
  end
end
