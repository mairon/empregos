class CandidatoExperienciasController < ApplicationController
  before_action :set_candidato_experiencia, only: [:show, :edit, :update, :destroy]

  def index
    @candidato_experiencias = CandidatoExperiencia.all
    respond_with(@candidato_experiencias)
  end

  def show
    respond_with(@candidato_experiencia)
  end

  def new
    @candidato_experiencia = CandidatoExperiencia.new
    respond_with(@candidato_experiencia)
  end

  def edit
  end

  def create
    @candidato_experiencia = CandidatoExperiencia.new(candidato_experiencia_params)
    @candidato_experiencia.save
    redirect_to  candidato_url(@candidato_experiencia.candidato_id)
  end

  def update
    @candidato_experiencia.update(candidato_experiencia_params)
    redirect_to  candidato_url(@candidato_experiencia.candidato_id)
  end

  def destroy
    @candidato_experiencia.destroy
    redirect_to  candidato_url(@candidato_experiencia.candidato_id)
  end

  private
    def set_candidato_experiencia
      @candidato_experiencia = CandidatoExperiencia.find(params[:id])
    end

    def candidato_experiencia_params
      params.require(:candidato_experiencia).permit(:candidato_id, :empresa_nome, :cargo_id, :descricao_ativ, :state_id, 
        :city_id, :inicio_mes, :inicio_ano, :final_mes, :final_ano, :atual, :tipo_vaga_id)
    end
end
