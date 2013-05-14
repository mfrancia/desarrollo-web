class RazesController < ApplicationController
  # GET /razes
  # GET /razes.json
  def index
    @razes = Raze.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @razes }
    end
  end

  # GET /razes/1
  # GET /razes/1.json
  def show
    @raze = Raze.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @raze }
    end
  end

  # GET /razes/new
  # GET /razes/new.json
  def new
    @raze = Raze.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @raze }
    end
  end

  # GET /razes/1/edit
  def edit
    @raze = Raze.find(params[:id])
  end

  # POST /razes
  # POST /razes.json
  def create
    @raze = Raze.new(params[:raze])

    respond_to do |format|
      if @raze.save
        format.html { redirect_to @raze, notice: 'Raze was successfully created.' }
        format.json { render json: @raze, status: :created, location: @raze }
      else
        format.html { render action: "new" }
        format.json { render json: @raze.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /razes/1
  # PUT /razes/1.json
  def update
    @raze = Raze.find(params[:id])

    respond_to do |format|
      if @raze.update_attributes(params[:raze])
        format.html { redirect_to @raze, notice: 'Raze was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @raze.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /razes/1
  # DELETE /razes/1.json
  def destroy
    @raze = Raze.find(params[:id])
    @raze.destroy

    respond_to do |format|
      format.html { redirect_to razes_url }
      format.json { head :no_content }
    end
  end
end
