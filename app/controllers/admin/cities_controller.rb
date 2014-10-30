class Admin::CitiesController < ApplicationController
  before_action :authenticate_user!  

  before_action :set_city, only: [:show, :edit, :update, :destroy]
  # GET /cities
  # GET /cities.json
  def index
    @cities = City.all
  end

  # GET /cities/1
  # GET /cities/1.json
  def show
    @city = City.find(params[:id])
  end

  # GET /cities/new
  # GET /cities/new.json
  def new
    @city = City.new
  end

  # GET /cities/1/edit
  def edit
    @city = City.find(params[:id])
  end

  # POST /cities
  # POST /cities.json
  def create
    @city = City.new(city_params)

    respond_to do |format|
      if @city.save
        format.html { redirect_to admin_cities_url }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /cities/1
  def update
    if @city.update(city_params)
      redirect_to admin_cities_url
    else
      render :edit
    end
  end

  # DELETE /cities/1
  def destroy
    @city.destroy
    redirect_to admin_cities_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @ramo = Ramo.find(params[:id])
    end
    def set_city
      @city = City.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.require(:city).permit(:name, :state_id)
    end

end
