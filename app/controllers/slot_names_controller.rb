class SlotNamesController < ApplicationController
  before_action :set_slot_name, only: [:show, :edit, :update, :destroy]

  # GET /slot_names
  # GET /slot_names.json
  def index
    @slot_names = SlotName.all
  end

  # GET /slot_names/1
  # GET /slot_names/1.json
  def show
  end

  # GET /slot_names/new
  def new
    @slot_name = SlotName.new
  end

  # GET /slot_names/1/edit
  def edit
  end

  # POST /slot_names
  # POST /slot_names.json
  def create
    @slot_name = SlotName.new(slot_name_params)

    respond_to do |format|
      if @slot_name.save
        format.html { redirect_to @slot_name, notice: 'Slot name was successfully created.' }
        format.json { render action: 'show', status: :created, location: @slot_name }
      else
        format.html { render action: 'new' }
        format.json { render json: @slot_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slot_names/1
  # PATCH/PUT /slot_names/1.json
  def update
    respond_to do |format|
      if @slot_name.update(slot_name_params)
        format.html { redirect_to @slot_name, notice: 'Slot name was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @slot_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slot_names/1
  # DELETE /slot_names/1.json
  def destroy
    @slot_name.destroy
    respond_to do |format|
      format.html { redirect_to slot_names_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slot_name
      @slot_name = SlotName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slot_name_params
      params.require(:slot_name).permit(:name, :img, :dounyuu, :setumei)
    end
end
