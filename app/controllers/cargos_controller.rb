class CargosController < ApplicationController  
  before_action :authenticate_user!

  before_action :set_cargo, only: [:show, :edit, :update, :destroy]
  respond_to :html
  
  def index
    @cargos = Cargo.all
    respond_with(@cargos)
  end

  def show
    respond_with(@cargo)
  end

  def new
    @cargo = Cargo.new
    respond_with(@cargo)
  end

  def edit
  end

  def create
    @cargo = Cargo.new(cargo_params)
    @cargo.save
    respond_with(@cargo)
  end

  def update
    @cargo.update(cargo_params)
    respond_with(@cargo)
  end

  def destroy
    @cargo.destroy
    respond_with(@cargo)
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
