class SwitchesController < ApplicationController
  # GET /switches
  # GET /switches.json
  def index
    @switches = Switch.all
    @switch = Switch.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @switches }
    end
  end

  # GET /switches/1
  # GET /switches/1.json
  def show
    @switch = Switch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @switch }
    end
  end

  # GET /switches/new
  # GET /switches/new.json
  def new
    @switch = Switch.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @switch }
    end
  end

  # GET /switches/1/edit
  def edit
    @switch = Switch.find(params[:id])
  end

  # POST /switches
  # POST /switches.json
  def create
    @switch = Switch.new(params[:switch])

    respond_to do |format|
      if @switch.save
        format.html { redirect_to @switch, notice: 'Switch was successfully created.' }
        format.json { render json: @switch, status: :created, location: @switch }
      else
        format.html { render action: "new" }
        format.json { render json: @switch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /switches/1
  # PUT /switches/1.json
  def update
    @switch = Switch.find(params[:id])

    respond_to do |format|
      if @switch.update_attributes(params[:switch])
        format.html { redirect_to @switch, notice: 'Switch was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @switch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /switches/1
  # DELETE /switches/1.json
  def destroy
    @switch = Switch.find(params[:id])
    @switch.destroy

    respond_to do |format|
      format.html { redirect_to switches_url }
      format.json { head :ok }
    end
  end
end
