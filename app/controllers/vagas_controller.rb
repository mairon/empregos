class VagasController < ApplicationController
  before_action :authenticate_user!  

  before_action :set_vaga, only: [:show, :edit, :update, :destroy]
  before_filter :load_resources, only: %w(new create edit update)
  # GET /vagas
  # GET /vagas.json
  def index
    @vagas = Vaga.all
  end

  # GET /vagas/1
  # GET /vagas/1.json
  def show
  end

  # GET /vagas/new
  def new
    @vaga = Vaga.new
    3.times do
      @vaga.idiomas_vagas.build
    end
  end

  # GET /vagas/1/edit
  def edit
  end

  # POST /vagas
  # POST /vagas.json
  def create
    @vaga = Vaga.new(vaga_params)

    if @vaga.save
      redirect_to @vaga
    else
      render :new
    end
  end

  # PATCH/PUT /vagas/1
  # PATCH/PUT /vagas/1.json
  def update
    if @vaga.update(vaga_params)
      redirect_to @vaga
    else
      render :edit
    end
  end

  # DELETE /vagas/1
  # DELETE /vagas/1.json
  def destroy
    @vaga.destroy
    redirect_to vagas_url
  end

  private

    def load_resources
      @dias_semanas = DiasSemana.includes(:vagas)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_vaga
      @vaga = Vaga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vaga_params     
      params.require(:vaga).permit( :efetivo_carteira, 
            :temporario, :extra, :trainer, :free_lancer, :autonomo, 
            :representante, :comerical, :comercial_tipo, :periodo, 
            :empresa_id, :cargo_id, :numero_vagas, :sexo, :pne, 
            :estado_civil, :outros_detalhes_candito, :escolaridade, 
            :area_tecnologo, :area_superior, :status_escolaridade, :mostrar_salario,
            :cursando_periodo, :experiencia, :conhecimentos_desejaveis, :salario_inicial,
            :salario_pos_exp, :salario_por_hms, :salario_comissao, :salario_comissao_porcen, 
            :nao_fumante, :candidatos_regiao, :salario_bonif, :salario_premiacao, 
            :tipo_vaga, dias_semana_ids: [], idiomas_vagas_attributes: [ :_destroy, :idioma_id, :nivel ])
    end
end
