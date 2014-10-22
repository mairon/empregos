class ConveniosEmpresaPerfilsController < ApplicationController
  before_action :set_convenios_empresa_perfil, only: [:show, :edit, :update, :destroy]

  # GET /convenios_empresa_perfils
  # GET /convenios_empresa_perfils.json
  def index
    @convenios_empresa_perfils = ConveniosEmpresaPerfil.all
  end

  # GET /convenios_empresa_perfils/1
  # GET /convenios_empresa_perfils/1.json
  def show
  end

  # GET /convenios_empresa_perfils/new
  def new
    @convenios_empresa_perfil = ConveniosEmpresaPerfil.new
  end

  # GET /convenios_empresa_perfils/1/edit
  def edit
  end

  # POST /convenios_empresa_perfils
  # POST /convenios_empresa_perfils.json
  def create
    @convenios_empresa_perfil = ConveniosEmpresaPerfil.new(convenios_empresa_perfil_params)

    respond_to do |format|
      if @convenios_empresa_perfil.save
        format.html { redirect_to @convenios_empresa_perfil, notice: 'Convenios empresa perfil was successfully created.' }
        format.json { render :show, status: :created, location: @convenios_empresa_perfil }
      else
        format.html { render :new }
        format.json { render json: @convenios_empresa_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /convenios_empresa_perfils/1
  # PATCH/PUT /convenios_empresa_perfils/1.json
  def update
    respond_to do |format|
      if @convenios_empresa_perfil.update(convenios_empresa_perfil_params)
        format.html { redirect_to @convenios_empresa_perfil, notice: 'Convenios empresa perfil was successfully updated.' }
        format.json { render :show, status: :ok, location: @convenios_empresa_perfil }
      else
        format.html { render :edit }
        format.json { render json: @convenios_empresa_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /convenios_empresa_perfils/1
  # DELETE /convenios_empresa_perfils/1.json
  def destroy
    @convenios_empresa_perfil.destroy
    respond_to do |format|
      format.html { redirect_to convenios_empresa_perfils_url, notice: 'Convenios empresa perfil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_convenios_empresa_perfil
      @convenios_empresa_perfil = ConveniosEmpresaPerfil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def convenios_empresa_perfil_params
      params.require(:convenios_empresa_perfil).permit(:empresa_perfil_id, :convenio_id)
    end
end
