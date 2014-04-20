class KaisekisController < ApplicationController
  before_action :set_kaiseki, only: [:show, :edit, :update, :destroy]

  # GET /kaisekis
  # GET /kaisekis.json
  def index
    @kaisekis = Kaiseki.all
  end

  # GET /kaisekis/1
  # GET /kaisekis/1.json
  def show
  end

  # GET /kaisekis/new
  def new
    @kaiseki = Kaiseki.new
  end

  # GET /kaisekis/1/edit
  def edit
  end

  # POST /kaisekis
  # POST /kaisekis.json
  def create
    @kaiseki = Kaiseki.new(kaiseki_params)

    respond_to do |format|
      if @kaiseki.save
        format.html { redirect_to @kaiseki, notice: 'Kaiseki was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kaiseki }
      else
        format.html { render action: 'new' }
        format.json { render json: @kaiseki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kaisekis/1
  # PATCH/PUT /kaisekis/1.json
  def update
    respond_to do |format|
      if @kaiseki.update(kaiseki_params)
        format.html { redirect_to @kaiseki, notice: 'Kaiseki was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kaiseki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kaisekis/1
  # DELETE /kaisekis/1.json
  def destroy
    @kaiseki.destroy
    respond_to do |format|
      format.html { redirect_to kaisekis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kaiseki
      @kaiseki = Kaiseki.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kaiseki_params
      params.require(:kaiseki).permit(:title, :kiji, :slot_name_id)
    end
end
