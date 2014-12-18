class CandidatosDiasSemanasController < ApplicationController
  before_action :set_candidatos_dias_semana, only: [:show, :edit, :update, :destroy]

  def index
    @candidatos_dias_semanas = CandidatosDiasSemana.all
    respond_with(@candidatos_dias_semanas)
  end

  def show
    respond_with(@candidatos_dias_semana)
  end

  def new
    @candidatos_dias_semana = CandidatosDiasSemana.new
    respond_with(@candidatos_dias_semana)
  end

  def edit
  end

  def create
    @candidatos_dias_semana = CandidatosDiasSemana.new(candidatos_dias_semana_params)
    @candidatos_dias_semana.save
    respond_with(@candidatos_dias_semana)
  end

  def update
    @candidatos_dias_semana.update(candidatos_dias_semana_params)
    respond_with(@candidatos_dias_semana)
  end

  def destroy
    @candidatos_dias_semana.destroy
    respond_with(@candidatos_dias_semana)
  end

  private
    def set_candidatos_dias_semana
      @candidatos_dias_semana = CandidatosDiasSemana.find(params[:id])
    end

    def candidatos_dias_semana_params
      params.require(:candidatos_dias_semana).permit(:candidato_id, :dias_semana_id)
    end
end
