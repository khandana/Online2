class CatagoriesController < ApplicationController
  before_action :set_catagory, only: [:show, :edit, :update, :destroy]

  # GET /catagories
  # GET /catagories.json
  def index
    @catagories = Catagory.all
  end

  # GET /catagories/1
  # GET /catagories/1.json
  def show
  end

  # GET /catagories/new
  def new
    @catagory = Catagory.new
  end

  # GET /catagories/1/edit
  def edit
  end

  # POST /catagories
  # POST /catagories.json
  def create
    @catagory = Catagory.new(catagory_params)

    respond_to do |format|
      if @catagory.save
        format.html { redirect_to @catagory, notice: 'Catagory was successfully created.' }
        format.json { render :show, status: :created, location: @catagory }
      else
        format.html { render :new }
        format.json { render json: @catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catagories/1
  # PATCH/PUT /catagories/1.json
  def update
    respond_to do |format|
      if @catagory.update(catagory_params)
        format.html { redirect_to @catagory, notice: 'Catagory was successfully updated.' }
        format.json { render :show, status: :ok, location: @catagory }
      else
        format.html { render :edit }
        format.json { render json: @catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catagories/1
  # DELETE /catagories/1.json
  def destroy
    @catagory.destroy
    respond_to do |format|
      format.html { redirect_to catagories_url, notice: 'Catagory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catagory
      @catagory = Catagory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catagory_params
      params.require(:catagory).permit(:name, :description)
    end
end
