class Admin::StatesController < ApplicationController
  before_action :set_state, only: [:show, :edit, :update, :destroy]
  # GET /states
  # GET /states.json
  def index
  @states = State.select('id,acronym,name')
  respond_to do |format|

        format.html # index.html.erb
        format.js do
          offset = (params["page"].to_i-1)*params["rp"].to_i if params["page"] and params["rp"]

          # Conditions passed by flexigrid
          conditions = [params["qtype"]+"=?", params["query"]] if params["query"] and params["query"].strip!=""
          people = State.where(conditions)

          # Total count of lines, before paginating
          total = people.count

          # People from the page
          people_de_la_page = people
            .order([params["sortname"], params["sortorder"]].join(" "))
            .offset(offset)
            .limit(params["rp"]).all
          # Rendering
          render :json => {
              :rows=>people_de_la_page.collect{|r| {:id=>r.id, :cell=>[r.acronym, r.name]}}, 
              :page=>params["page"],
              :total=>total
            }.to_json
        end #format.js
      end #respond_to
  end #index method

  def show
    @state = State.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @state }
    end
  end

  # GET /states/new
  # GET /states/new.json
  def new
    @state = State.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @state }
    end
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
