class CandidatosTipoVagasController < ApplicationController
  before_action :set_candidatos_tipo_vaga, only: [:show, :edit, :update, :destroy]

  def index
    @candidatos_tipo_vagas = CandidatosTipoVaga.all
    respond_with(@candidatos_tipo_vagas)
  end

  def show
    respond_with(@candidatos_tipo_vaga)
  end

  def new
    @candidatos_tipo_vaga = CandidatosTipoVaga.new
    respond_with(@candidatos_tipo_vaga)
  end

  def edit
  end

  def create
    @candidatos_tipo_vaga = CandidatosTipoVaga.new(candidatos_tipo_vaga_params)
    @candidatos_tipo_vaga.save
    respond_with(@candidatos_tipo_vaga)
  end

  def update
    @candidatos_tipo_vaga.update(candidatos_tipo_vaga_params)
    respond_with(@candidatos_tipo_vaga)
  end

  def destroy
    @candidatos_tipo_vaga.destroy
    respond_with(@candidatos_tipo_vaga)
  end

  private
    def set_candidatos_tipo_vaga
      @candidatos_tipo_vaga = CandidatosTipoVaga.find(params[:id])
    end

    def candidatos_tipo_vaga_params
      params.require(:candidatos_tipo_vaga).permit(:candidato_id, :tipo_vaga_id)
    end
end
