class CandidatoFormacaosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_candidato_formacao, only: [:show, :edit, :update, :destroy]

  def index
    @candidato_formacaos = CandidatoFormacao.all
    respond_with(@candidato_formacaos)
  end

  def show
    respond_with(@candidato_formacao)
  end

  def new
    @candidato_formacao = CandidatoFormacao.new
    respond_with(@candidato_formacao)
  end

  def edit
  end

  def create
    @candidato_formacao = CandidatoFormacao.new(candidato_formacao_params)
    @candidato_formacao.save
    redirect_to  candidato_url(@candidato_formacao.candidato_id)
 end

  def update
    @candidato_formacao.update(candidato_formacao_params)
    redirect_to  candidato_url(@candidato_formacao.candidato_id)
  end

  def destroy
    @candidato_formacao.destroy
    redirect_to  candidato_url(@candidato_formacao.candidato_id)
  end

  private
    def set_candidato_formacao
      @candidato_formacao = CandidatoFormacao.find(params[:id])
    end

    def candidato_formacao_params
      params.require(:candidato_formacao).permit(:candidato_id, :cursando_periodo, :formacao_id, :curso_id, :status, :inicio_mes, :inicio_ano, :final_mes, :final_ano, :instituicao, :pais_id, :estado_id)
    end
end
