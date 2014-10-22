class Admin::CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]
  # GET /cities
  # GET /cities.json
  def index
    @cities = City.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cities }
    end
  end

  # GET /cities/1
  # GET /cities/1.json
  def show
    @city = City.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @city }
    end
  end

  # GET /cities/new
  # GET /cities/new.json
  def new
    @city = City.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @city }
    end
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
  # PUT /cities/1.json
  def update
    @city = City.find(city_params)

    respond_to do |format|
      if @city.update_attributes(params[:city])
        format.html { redirect_to admin_cities_url }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy
    @city = City.find(params[:id])
    begin
    @city.destroy
      flash[:success] = "Removido com Sucesso"
    rescue ActiveRecord::DeleteRestrictionError => e
      @city.errors.add(:base, e)
      flash[:error] = "Não é possível remover o cadastro porque ele possui vínculo com outro cadastro."
    ensure
      redirect_to admin_cities_url
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @ramo = Ramo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.require(:city).permit(:name, :state_id)
    end

end
