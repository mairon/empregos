class Admin::RamosController < ApplicationController
  before_action :authenticate_user!  

  before_action :set_ramo, only: [:show, :edit, :update, :destroy]

  # GET /admin/ramos
  # GET /admin/ramos.json
  def index
    @ramos = Ramo.all
  end

  # GET /admin/ramos/1
  def show
  end

  # GET /admin/ramos/new
  def new
    @ramo = Ramo.new
  end

  # GET /admin/ramos/1/edit
  def edit
  end

  # POST /admin/ramos
  def create
    @ramo = Ramo.new(ramo_params)
    if @ramo.save
      redirect_to admin_ramos_url
    else
      render :new
    end
  end

  # PATCH/PUT /admin/ramos/1
  def update
    if @ramo.update(ramo_params)
      redirect_to admin_ramos_url
    else
      render :edit
    end
  end

  # DELETE /admin/ramos/1
  # DELETE /admin/ramos/1.json
  def destroy
    @ramo.destroy
    redirect_to admin_ramos_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ramo
      @ramo = Ramo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ramo_params
      params.require(:ramo).permit(:nome, :status, :codigo)
    end
end
