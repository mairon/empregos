class CandidatoExperienciasCargosController < ApplicationController
  before_action :set_candidato_experiencias_cargo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @candidato_experiencias_cargos = CandidatoExperienciasCargo.all
    respond_with(@candidato_experiencias_cargos)
  end

  def show
    respond_with(@candidato_experiencias_cargo)
  end

  def new
    @candidato_experiencias_cargo = CandidatoExperienciasCargo.new
    respond_with(@candidato_experiencias_cargo)
  end

  def edit
  end

  def create
    @candidato_experiencias_cargo = CandidatoExperienciasCargo.new(candidato_experiencias_cargo_params)
    @candidato_experiencias_cargo.save
    respond_with(@candidato_experiencias_cargo)
  end

  def update
    @candidato_experiencias_cargo.update(candidato_experiencias_cargo_params)
    respond_with(@candidato_experiencias_cargo)
  end

  def destroy
    @candidato_experiencias_cargo.destroy
    respond_with(@candidato_experiencias_cargo)
  end

  private
    def set_candidato_experiencias_cargo
      @candidato_experiencias_cargo = CandidatoExperienciasCargo.find(params[:id])
    end

    def candidato_experiencias_cargo_params
      params.require(:candidato_experiencias_cargo).permit(:cargo_id, :candidato_experiencia_id, :candidato_id)
    end
end
