class DocumentosEmpresaPerfilsController < ApplicationController
  before_action :set_documentos_empresa_perfil, only: [:show, :edit, :update, :destroy]

  # GET /documentos_empresa_perfils
  # GET /documentos_empresa_perfils.json
  def index
    @documentos_empresa_perfils = DocumentosEmpresaPerfil.all
  end

  # GET /documentos_empresa_perfils/1
  # GET /documentos_empresa_perfils/1.json
  def show
  end

  # GET /documentos_empresa_perfils/new
  def new
    @documentos_empresa_perfil = DocumentosEmpresaPerfil.new
  end

  # GET /documentos_empresa_perfils/1/edit
  def edit
  end

  # POST /documentos_empresa_perfils
  # POST /documentos_empresa_perfils.json
  def create
    @documentos_empresa_perfil = DocumentosEmpresaPerfil.new(documentos_empresa_perfil_params)

    respond_to do |format|
      if @documentos_empresa_perfil.save
        format.html { redirect_to @documentos_empresa_perfil, notice: 'Documentos empresa perfil was successfully created.' }
        format.json { render :show, status: :created, location: @documentos_empresa_perfil }
      else
        format.html { render :new }
        format.json { render json: @documentos_empresa_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documentos_empresa_perfils/1
  # PATCH/PUT /documentos_empresa_perfils/1.json
  def update
    respond_to do |format|
      if @documentos_empresa_perfil.update(documentos_empresa_perfil_params)
        format.html { redirect_to @documentos_empresa_perfil, notice: 'Documentos empresa perfil was successfully updated.' }
        format.json { render :show, status: :ok, location: @documentos_empresa_perfil }
      else
        format.html { render :edit }
        format.json { render json: @documentos_empresa_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documentos_empresa_perfils/1
  # DELETE /documentos_empresa_perfils/1.json
  def destroy
    @documentos_empresa_perfil.destroy
    respond_to do |format|
      format.html { redirect_to documentos_empresa_perfils_url, notice: 'Documentos empresa perfil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_documentos_empresa_perfil
      @documentos_empresa_perfil = DocumentosEmpresaPerfil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def documentos_empresa_perfil_params
      params.require(:documentos_empresa_perfil).permit(:empresa_perfil_id, :documento_id)
    end
end
