class Admin::DocumentosController < ApplicationController
  before_action :set_admin_documento, only: [:show, :edit, :update, :destroy]

  # GET /admin/documentos
  # GET /admin/documentos.json
  def index
    @admin_documentos = Admin::Documento.all
  end

  # GET /admin/documentos/1
  # GET /admin/documentos/1.json
  def show
  end

  # GET /admin/documentos/new
  def new
    @admin_documento = Admin::Documento.new
  end

  # GET /admin/documentos/1/edit
  def edit
  end

  # POST /admin/documentos
  # POST /admin/documentos.json
  def create
    @admin_documento = Admin::Documento.new(admin_documento_params)

    respond_to do |format|
      if @admin_documento.save
        format.html { redirect_to admin_documentos_url }
        format.json { render :show, status: :created, location: @admin_documento }
      else
        format.html { render :new }
        format.json { render json: @admin_documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/documentos/1
  # PATCH/PUT /admin/documentos/1.json
  def update
    respond_to do |format|
      if @admin_documento.update(admin_documento_params)
        format.html { redirect_to admin_documentos_url }
        format.json { render :show, status: :ok, location: @admin_documento }
      else
        format.html { render :edit }
        format.json { render json: @admin_documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/documentos/1
  # DELETE /admin/documentos/1.json
  def destroy
    @admin_documento.destroy
    respond_to do |format|
      format.html { redirect_to admin_documentos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_documento
      @admin_documento = Admin::Documento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_documento_params
      params.require(:admin_documento).permit(:nome, :status)
    end
end
