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

    respond_to do |format|
      if @vaga.save
        format.html { redirect_to @vaga, notice: 'Vaga was successfully created.' }
        format.json { render :show, status: :created, location: @vaga }
      else
        format.html { render :new }
        format.json { render json: @vaga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vagas/1
  # PATCH/PUT /vagas/1.json
  def update
    respond_to do |format|
      if @vaga.update(vaga_params)
        format.html { redirect_to @vaga, notice: 'Vaga was successfully updated.' }
        format.json { render :show, status: :ok, location: @vaga }
      else
        format.html { render :edit }
        format.json { render json: @vaga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vagas/1
  # DELETE /vagas/1.json
  def destroy
    @vaga.destroy
    respond_to do |format|
      format.html { redirect_to vagas_url, notice: 'Vaga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def load_resources
      @dias_semanas = DiasSemana.all
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
            :area_tecnologo, :area_superior, :status_escolaridade, 
            :cursando_periodo, :experiencia, :conhecimentos_desejaveis,
            :tipo_vaga, dias_semana_ids: [], idiomas_vagas_attributes: [ :_destroy, :idioma_id, :nivel ])
    end
end
