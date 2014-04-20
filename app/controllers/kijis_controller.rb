class KijisController < ApplicationController
    before_filter :load_post
  before_action :set_kiji, only: [:show, :edit, :update, :destroy]

  # GET /kijis
  # GET /kijis.json
  def index
    @kijis = Kiji.all
  end

  # GET /kijis/1
  # GET /kijis/1.json
  def show
  end

  # GET /kijis/new
  def new
    @kiji = Kiji.new
  end

  # GET /kijis/1/edit
  def edit
  end

  # POST /kijis
  # POST /kijis.json
  def create
    @kiji = Kiji.new(kiji_params)

    respond_to do |format|
      if @kiji.save
        format.html { redirect_to @kiji, notice: 'Kiji was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kiji }
      else
        format.html { render action: 'new' }
        format.json { render json: @kiji.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kijis/1
  # PATCH/PUT /kijis/1.json
  def update
    respond_to do |format|
      if @kiji.update(kiji_params)
        format.html { redirect_to @kiji, notice: 'Kiji was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kiji.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kijis/1
  # DELETE /kijis/1.json
  def destroy
    @kiji.destroy
    respond_to do |format|
      format.html { redirect_to kijis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kiji
      @kiji = Kiji.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kiji_params
      params.require(:kiji).permit(:slot_name_id, :title, :body)
    end
end
