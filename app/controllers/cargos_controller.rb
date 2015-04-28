class CargosController < ApplicationController  
  before_action :authenticate_user!  

  before_action :set_cargo, only: [:show, :edit, :update, :destroy]

  def index
    @cargos = Cargo.order('id desc')
  end

  def show
  end

  def visualizacao
  end

  def new
    @cargo = Cargo.new
  end

  def edit
  end

  def create
    @cargo = Cargo.new(cargo_params)

    if @cargo.save
      redirect_to cargos_url
    else
      render :new
    end
  end

  def update
    if @cargo.update(cargo_params)
      redirect_to cargos_url
    else
      render :edit
    end
  end

  def destroy
    @cargo.destroy
      redirect_to cargos_url
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cargo
      @cargo = Cargo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cargo_params
      params.require(:cargo).permit(:nome, :status)
    end
end
