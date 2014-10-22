class Admin::RamosController < ApplicationController
  before_action :set_ramo, only: [:show, :edit, :update, :destroy]

  # GET /admin/ramos
  # GET /admin/ramos.json
  def index
    @ramos = Ramo.all
  end

  # GET /admin/ramos/1
  # GET /admin/ramos/1.json
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
  # POST /admin/ramos.json
  def create
    @ramo = Ramo.new(ramo_params)

    respond_to do |format|
      if @ramo.save
        format.html { redirect_to admin_ramos_url }
        format.json { render :show, status: :created, location: @ramo }
      else
        format.html { render :new }
        format.json { render json: @ramo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/ramos/1
  # PATCH/PUT /admin/ramos/1.json
  def update
    respond_to do |format|
      if @ramo.update(ramo_params)
        format.html { redirect_to admin_ramos_url }
        format.json { render :show, status: :ok, location: @ramo }
      else
        format.html { render :edit }
        format.json { render json: @ramo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/ramos/1
  # DELETE /admin/ramos/1.json
  def destroy
    @ramo.destroy
    respond_to do |format|
      format.html { redirect_to admin_ramos_url }
      format.json { head :no_content }
    end
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
