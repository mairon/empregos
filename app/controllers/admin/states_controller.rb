class Admin::StatesController < ApplicationController
  before_action :authenticate_user!  

  before_action :set_state, only: [:show, :edit, :update, :destroy]
  def index
    @states = State.select('id,acronym,name')
  end

  def show
    @state = State.find(params[:id])
  end

  # GET /states/new
  # GET /states/new.json
  def new
    @state = State.new
  end

  # GET /states/1/edit
  def edit
    @state = State.find(params[:id])
  end

  # POST /states
  # POST /states.json
  def create
    @state = State.new(state_params)

    respond_to do |format|
      if @state.save
        format.html { redirect_to admin_states_url }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /states/1
  # PUT /states/1.json
  def update
    @state = State.find(params[:id])

    respond_to do |format|
      if @state.update_attributes(state_params)
        format.html { redirect_to admin_states_url }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /states/1
  # DELETE /states/1.json
  def destroy
    @state = State.find(params[:id])
    begin
      @state.destroy
      flash[:success] = "Removido com Sucesso" 
    rescue ActiveRecord::DeleteRestrictionError => e
      @state.errors.add(:base, e)
      flash[:error] = "Não é possível remover o cadastro porque ele possui vínculo com outro cadastro."
    ensure
      redirect_to admin_states_url
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state
      @state = State.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_params
      params.require(:state).permit(:acronym, :name)
    end
end
