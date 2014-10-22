class EmpresasController < ApplicationController
  before_action :set_empresa, only: [:show, :edit, :update, :destroy]
  before_filter :load_resources, only: %w(new create edit update)

  def check_empresa
    @empresa = Empresa.find_by_cnpj(params[:empresa][:cnpj])

    respond_to do |format|
     format.json { render :json => !@empresa }
    end
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
    respond_to do |format|
      if @empresa.save
        format.html { redirect_to @empresa }
        format.json { render :show, status: :created, location: @empresa }
      else
        format.html { render :new }
        format.json { render json: @empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empresas/1
  # PATCH/PUT /empresas/1.json
  def update
    respond_to do |format|
      if @empresa.update(empresa_params)
        format.html { redirect_to @empresa }
        format.json { render :show, status: :ok, location: @empresa }
      else
        format.html { render :edit }
        format.json { render json: @empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empresas/1
  # DELETE /empresas/1.json
  def destroy
    @empresa.destroy
    respond_to do |format|
      format.html { redirect_to empresas_url }
      format.json { head :no_content }
    end
  end

  private
    def load_resources
      @convenios = Convenio.all
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_empresa
      @empresa = Empresa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empresa_params
      params.require(:empresa).permit(:user_id, :cnpj, :ramo_id, :razao_social, :nome_fantasia, :cep, :endereco, :complemento, :regiao, :state_id, :city_id, :referencia, :fone01, :ramal01, :fone02, :ramal02, :fone03, :ramal03, :responsavel, :fone_resp, :email_receb, :site, :unidade, :endero_entrevista, :entrev_cep, :entrev_endereco, :entrev_complemento, :entrev_regiao, :entrev_state_id, :entrev_city_id, :entrev_referencia, :entrev_fone_resp, :entev_ramal_resp, :ramal_resp, :entrev_email, :numero, :entrev_responsavel, :entrev_numero, :entrev_emai2, :receb_noticia_sms, :receb_noticia_email)
    end
end
