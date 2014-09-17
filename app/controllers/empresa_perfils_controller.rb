class EmpresaPerfilsController < ApplicationController
  before_action :set_empresa_perfil, only: [:show, :edit, :update, :destroy]
  before_filter :load_resources, only: %w(new create edit update)

  # GET /empresa_perfils
  # GET /empresa_perfils.json
  def index
    @empresa_perfils = EmpresaPerfil.all
  end

  # GET /empresa_perfils/1
  # GET /empresa_perfils/1.json
  def show
  end

  # GET /empresa_perfils/new
  def new
    @empresa_perfil = EmpresaPerfil.new
  end

  # GET /empresa_perfils/1/edit
  def edit
  end

  # POST /empresa_perfils
  # POST /empresa_perfils.json
  def create
    @empresa_perfil = EmpresaPerfil.new(empresa_perfil_params)

    respond_to do |format|
      if @empresa_perfil.save
        format.html { redirect_to @empresa_perfil, notice: 'Empresa perfil was successfully created.' }
        format.json { render :show, status: :created, location: @empresa_perfil }
      else
        format.html { render :new }
        format.json { render json: @empresa_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empresa_perfils/1
  # PATCH/PUT /empresa_perfils/1.json
  def update
    respond_to do |format|
      if @empresa_perfil.update(empresa_perfil_params)
        format.html { redirect_to "/empresas"}
      else
        format.html { render :edit }
        format.json { render json: @empresa_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empresa_perfils/1
  # DELETE /empresa_perfils/1.json
  def destroy
    @empresa_perfil.destroy
    respond_to do |format|
      format.html { redirect_to empresa_perfils_url, notice: 'Empresa perfil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def load_resources
      @convenios = Convenio.all
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_empresa_perfil
      @empresa_perfil = EmpresaPerfil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empresa_perfil_params
      params[:empresa_perfil][:convenio_ids] ||= []
      params[:empresa_perfil][:documento_ids] ||= []
      params.require(:empresa_perfil).permit( :empresa_id, :trab_sabado, :trab_domingo_feriados, :trans_vale_transporte, :trans_ajuda, :trans_combinar, :ali_vale_refeicao, :ali_refeitorio_proprio, :ali_ajuda, :ali_combinar, :trans_vale_valor, :trans_ajuda_valor, :ali_vale_valor, :ali_ajuda_valor, convenio_ids: [], documento_ids: [])
    end
end
