class DiasSemanasVagasController < ApplicationController
  before_action :set_dias_semanas_vaga, only: [:show, :edit, :update, :destroy]

  # GET /dias_semanas_vagas
  # GET /dias_semanas_vagas.json
  def index
    @dias_semanas_vagas = DiasSemanasVaga.all
  end

  # GET /dias_semanas_vagas/1
  # GET /dias_semanas_vagas/1.json
  def show
  end

  # GET /dias_semanas_vagas/new
  def new
    @dias_semanas_vaga = DiasSemanasVaga.new
  end

  # GET /dias_semanas_vagas/1/edit
  def edit
  end

  # POST /dias_semanas_vagas
  # POST /dias_semanas_vagas.json
  def create
    @dias_semanas_vaga = DiasSemanasVaga.new(dias_semanas_vaga_params)

    respond_to do |format|
      if @dias_semanas_vaga.save
        format.html { redirect_to @dias_semanas_vaga, notice: 'Dias semanas vaga was successfully created.' }
        format.json { render :show, status: :created, location: @dias_semanas_vaga }
      else
        format.html { render :new }
        format.json { render json: @dias_semanas_vaga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dias_semanas_vagas/1
  # PATCH/PUT /dias_semanas_vagas/1.json
  def update
    respond_to do |format|
      if @dias_semanas_vaga.update(dias_semanas_vaga_params)
        format.html { redirect_to @dias_semanas_vaga, notice: 'Dias semanas vaga was successfully updated.' }
        format.json { render :show, status: :ok, location: @dias_semanas_vaga }
      else
        format.html { render :edit }
        format.json { render json: @dias_semanas_vaga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dias_semanas_vagas/1
  # DELETE /dias_semanas_vagas/1.json
  def destroy
    @dias_semanas_vaga.destroy
    respond_to do |format|
      format.html { redirect_to dias_semanas_vagas_url, notice: 'Dias semanas vaga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dias_semanas_vaga
      @dias_semanas_vaga = DiasSemanasVaga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dias_semanas_vaga_params
      params.require(:dias_semanas_vaga).permit(:vaga_id, :nome)
    end
end
