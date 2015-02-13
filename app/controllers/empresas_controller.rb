class EmpresasController < ApplicationController
  before_action :authenticate_user!  
  before_action :set_empresa, only: [:show, :edit, :update, :destroy]
  before_filter :load_resources, only: %w(new create edit update show)

  def check_empresa
    @empresa = Empresa.find_by_cnpj(params[:empresa][:cnpj])
    render :json => !@empresa
  end

  # GET /empresas
  # GET /empresas.json
  def index
    @empresas = Empresa.all
  end

  # GET /empresas/1
  # GET /empresas/1.json
  def show
    @empresa_perfil = EmpresaPerfil.find(@empresa.empresa_perfil.id)
    @convenios = Convenio.all
    @documentos = Documento.all
  end

  # GET /empresas/new
  def new
    @empresa = Empresa.new
  end

  # GET /empresas/1/edit
  def edit
  end

  # POST /empresas
  # POST /empresas.json
  def create
    @empresa = Empresa.new(empresa_params)
    if @empresa.save
      redirect_to @empresa
    else
      render :new
    end
  end

  # PATCH/PUT /empresas/1
  # PATCH/PUT /empresas/1.json
  def update
    if @empresa.update(empresa_params)
       render :show, status: :ok, location: @empresa
    else
      render :edit
    end
  end

  # DELETE /empresas/1
  # DELETE /empresas/1.json
  def destroy
    @empresa.destroy
    redirect_to empresas_url
  end

  private
    def load_resources
      @convenios = Convenio.all
      @dias_semanas = DiasSemana.all
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_empresa
      @empresa = Empresa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empresa_params     
      params.require(:empresa).permit( :user_id, :cnpj, :razao_social, :ramo_id, :nome_fantasia,:unidade, :cep, 
        :endereco, :numero, :complemento, :regiao, :state_id, :city_id, :fone01, :ramal01, :fone02, :ponto_referencia,
        :ramal02, :fone03, :ramal03, :responsavel, :fone_resp, :fone_resp, :email_receb, :site, :endero_entrevista, 
        :entrev_cep, :entrev_endereco, :entrev_numero, :entrev_complemento, :entrev_regiao, :entrev_state_id, :entrev_city_id, 
        :resp_entrevista, :entrev_responsavel, :entrev_fone_resp, :ramal_resp, :entrev_email, :entrev_emai2, :receb_noticia_email, 
        :receb_noticia_sms, :bairro, :entrev_bairro )
    end
end
