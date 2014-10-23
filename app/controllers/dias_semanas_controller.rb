class DiasSemanasController < ApplicationController
  before_action :authenticate_user!  

  before_action :set_dias_semana, only: [:show, :edit, :update, :destroy]

  # GET /dias_semanas
  # GET /dias_semanas.json
  def index
    @dias_semanas = DiasSemana.all
  end

  # GET /dias_semanas/1
  # GET /dias_semanas/1.json
  def show
  end

  # GET /dias_semanas/new
  def new
    @dias_semana = DiasSemana.new
  end

  # GET /dias_semanas/1/edit
  def edit
  end

  # POST /dias_semanas
  # POST /dias_semanas.json
  def create
    @dias_semana = DiasSemana.new(dias_semana_params)

    respond_to do |format|
      if @dias_semana.save
        format.html { redirect_to @dias_semana, notice: 'Dias semana was successfully created.' }
        format.json { render :show, status: :created, location: @dias_semana }
      else
        format.html { render :new }
        format.json { render json: @dias_semana.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dias_semanas/1
  # PATCH/PUT /dias_semanas/1.json
  def update
    respond_to do |format|
      if @dias_semana.update(dias_semana_params)
        format.html { redirect_to @dias_semana, notice: 'Dias semana was successfully updated.' }
        format.json { render :show, status: :ok, location: @dias_semana }
      else
        format.html { render :edit }
        format.json { render json: @dias_semana.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dias_semanas/1
  # DELETE /dias_semanas/1.json
  def destroy
    @dias_semana.destroy
    respond_to do |format|
      format.html { redirect_to dias_semanas_url, notice: 'Dias semana was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dias_semana
      @dias_semana = DiasSemana.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dias_semana_params
      params.require(:dias_semana).permit(:nome)
    end
end
