class CandidatosController < ApplicationController
  before_action :authenticate_user!  

  before_action :set_candidato, only: [:show, :edit, :update, :destroy, :visualizacao]
  before_filter :load_resources, only: %w(new create edit update)
  # GET /candidatos
  # GET /candidatos.json
  def index
    @candidatos = Candidato.order('id desc')
  end

  # GET /candidatos/1
  # GET /candidatos/1.json
  def show
  end

  def visualizacao
  end

  # GET /candidatos/new
  def new
    @candidato = Candidato.new
  end

  # GET /candidatos/1/edit
  def edit
  end

  # POST /candidatos
  # POST /candidatos.json
  def create
    @candidato = Candidato.new(candidato_params)

    if @candidato.save
      redirect_to @candidato
    else
      render :new
    end
  end

  # PATCH/PUT /candidatos/1
  # PATCH/PUT /candidatos/1.json
  def update
    if @candidato.update(candidato_params)
      redirect_to @candidato
    else
      render :edit
    end
  end

  # DELETE /candidatos/1
  # DELETE /candidatos/1.json
  def destroy
    @candidato.destroy
      redirect_to candidatos_url
  end

  private
    def load_resources
      @dias_semanas = DiasSemana.includes(:candidatos)      
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_candidato
      @candidato = Candidato.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def candidato_params
      params.require(:candidato).permit(:nome, :rg, :avatar, :uf, :cpf, :data_nascimento, :idade, :nome_mae, :contato_cel, :tipo_veiculo,
        :operadora_id, :contato_residencial, :contato_recado, :gra_pare_recado, :nome_recado, :email_01, :email_02, :email_03, :cep, :endereco, :numero, :complemento, 
        :bairro, :regiao, :state_id, :city_id, :pais, :nacionalidade_id, :fumante, :pne, :pne_tipo, :png_grau, :pne_detalhe, 
        :estado_civil, :filhos, :disponibilidade_inicio, :pretencao_salario, :filhos_qtd, :filhos_cacula, :sexo, :cnh, :veiculo_proprio, :pretencao_salario_min, :filho_mes_ano, dias_semana_ids: [], cargo_ids: [], tipo_vaga_ids: [], turno_ids: [])
    end
end
