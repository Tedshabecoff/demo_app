class SpacecatsController < ApplicationController
  # GET /spacecats
  # GET /spacecats.json
  def index
    @spacecats = Spacecat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spacecats }
    end
  end

  # GET /spacecats/1
  # GET /spacecats/1.json
  def show
    @spacecat = Spacecat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spacecat }
    end
  end

  # GET /spacecats/new
  # GET /spacecats/new.json
  def new
    @spacecat = Spacecat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spacecat }
    end
  end

  # GET /spacecats/1/edit
  def edit
    @spacecat = Spacecat.find(params[:id])
  end

  # POST /spacecats
  # POST /spacecats.json
  def create
    @spacecat = Spacecat.new(params[:spacecat])

    respond_to do |format|
      if @spacecat.save
        format.html { redirect_to @spacecat, notice: 'Spacecat was successfully created.' }
        format.json { render json: @spacecat, status: :created, location: @spacecat }
      else
        format.html { render action: "new" }
        format.json { render json: @spacecat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spacecats/1
  # PUT /spacecats/1.json
  def update
    @spacecat = Spacecat.find(params[:id])

    respond_to do |format|
      if @spacecat.update_attributes(params[:spacecat])
        format.html { redirect_to @spacecat, notice: 'Spacecat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spacecat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spacecats/1
  # DELETE /spacecats/1.json
  def destroy
    @spacecat = Spacecat.find(params[:id])
    @spacecat.destroy

    respond_to do |format|
      format.html { redirect_to spacecats_url }
      format.json { head :no_content }
    end
  end
end
