class DiasSemanasEmpresaPerfilsController < ApplicationController
  before_action :authenticate_user!  

  before_action :set_dias_semanas_empresa_perfil, only: [:show, :edit, :update, :destroy]

  # GET /dias_semanas_empresa_perfils
  # GET /dias_semanas_empresa_perfils.json
  def index
    @days = DiasSemanasEmpresaPerfil.select('dias_semanas_empresa_perfils.dias_semana_id').joins(:empresa_perfil).where(empresa_perfils: {empresa_id: params[:q]})
    list = @days.map {|u| Hash[ id: u.dias_semana_id]}
    render json: list
  end

  # GET /dias_semanas_empresa_perfils/1
  # GET /dias_semanas_empresa_perfils/1.json
  def show
  end

  # GET /dias_semanas_empresa_perfils/new
  def new
    @dias_semanas_empresa_perfil = DiasSemanasEmpresaPerfil.new
  end

  # GET /dias_semanas_empresa_perfils/1/edit
  def edit
  end

  # POST /dias_semanas_empresa_perfils
  # POST /dias_semanas_empresa_perfils.json
  def create
    @dias_semanas_empresa_perfil = DiasSemanasEmpresaPerfil.new(dias_semanas_empresa_perfil_params)

    respond_to do |format|
      if @dias_semanas_empresa_perfil.save
        format.html { redirect_to @dias_semanas_empresa_perfil, notice: 'Dias semanas empresa perfil was successfully created.' }
        format.json { render :show, status: :created, location: @dias_semanas_empresa_perfil }
      else
        format.html { render :new }
        format.json { render json: @dias_semanas_empresa_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dias_semanas_empresa_perfils/1
  # PATCH/PUT /dias_semanas_empresa_perfils/1.json
  def update
    respond_to do |format|
      if @dias_semanas_empresa_perfil.update(dias_semanas_empresa_perfil_params)
        format.html { redirect_to @dias_semanas_empresa_perfil, notice: 'Dias semanas empresa perfil was successfully updated.' }
        format.json { render :show, status: :ok, location: @dias_semanas_empresa_perfil }
      else
        format.html { render :edit }
        format.json { render json: @dias_semanas_empresa_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dias_semanas_empresa_perfils/1
  # DELETE /dias_semanas_empresa_perfils/1.json
  def destroy
    @dias_semanas_empresa_perfil.destroy
    respond_to do |format|
      format.html { redirect_to dias_semanas_empresa_perfils_url, notice: 'Dias semanas empresa perfil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dias_semanas_empresa_perfil
      @dias_semanas_empresa_perfil = DiasSemanasEmpresaPerfil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dias_semanas_empresa_perfil_params
      params.require(:dias_semanas_empresa_perfil).permit(:empresa_perfil_id, :dias_semana_id)
    end
end
