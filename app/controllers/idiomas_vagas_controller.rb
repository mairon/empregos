class IdiomasVagasController < ApplicationController
  before_action :authenticate_user!  

  before_action :set_idiomas_vaga, only: [:show, :edit, :update, :destroy]

  # GET /idiomas_vagas
  # GET /idiomas_vagas.json
  def index
    @idiomas_vagas = IdiomasVaga.all
  end

  # GET /idiomas_vagas/1
  # GET /idiomas_vagas/1.json
  def show
  end

  # GET /idiomas_vagas/new
  def new
    @idiomas_vaga = IdiomasVaga.new
  end

  # GET /idiomas_vagas/1/edit
  def edit
  end

  # POST /idiomas_vagas
  # POST /idiomas_vagas.json
  def create
    @idiomas_vaga = IdiomasVaga.new(idiomas_vaga_params)

    respond_to do |format|
      if @idiomas_vaga.save
        format.html { redirect_to @idiomas_vaga, notice: 'Idiomas vaga was successfully created.' }
        format.json { render :show, status: :created, location: @idiomas_vaga }
      else
        format.html { render :new }
        format.json { render json: @idiomas_vaga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idiomas_vagas/1
  # PATCH/PUT /idiomas_vagas/1.json
  def update
    respond_to do |format|
      if @idiomas_vaga.update(idiomas_vaga_params)
        format.html { redirect_to @idiomas_vaga, notice: 'Idiomas vaga was successfully updated.' }
        format.json { render :show, status: :ok, location: @idiomas_vaga }
      else
        format.html { render :edit }
        format.json { render json: @idiomas_vaga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idiomas_vagas/1
  # DELETE /idiomas_vagas/1.json
  def destroy
    @idiomas_vaga.destroy
    respond_to do |format|
      format.html { redirect_to idiomas_vagas_url, notice: 'Idiomas vaga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idiomas_vaga
      @idiomas_vaga = IdiomasVaga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idiomas_vaga_params
      params.require(:idiomas_vaga).permit(:vaga_id, :idioma_id, :nivel)
    end
end
