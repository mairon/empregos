class CandidatosCargosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_candidatos_cargo, only: [:show, :edit, :update, :destroy]

  def index
    @candidatos_cargos = CandidatosCargo.all
    respond_with(@candidatos_cargos)
  end

  def show
    respond_with(@candidatos_cargo)
  end

  def new
    @candidatos_cargo = CandidatosCargo.new
    respond_with(@candidatos_cargo)
  end

  def edit
  end

  def create
    @candidatos_cargo = CandidatosCargo.new(candidatos_cargo_params)
    @candidatos_cargo.save
    respond_with(@candidatos_cargo)
  end

  def update
    @candidatos_cargo.update(candidatos_cargo_params)
    respond_with(@candidatos_cargo)
  end

  def destroy
    @candidatos_cargo.destroy
    respond_with(@candidatos_cargo)
  end

  private
    def set_candidatos_cargo
      @candidatos_cargo = CandidatosCargo.find(params[:id])
    end

    def candidatos_cargo_params
      params.require(:candidatos_cargo).permit(:candidato_id, :cargo_id)
    end
end
