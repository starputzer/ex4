class OutputdevicesController < ApplicationController
  before_action :set_outputdevice, only: [:toogle, :show, :edit, :update, :destroy]

  #TOGGLE /outputdevice/1/toogle
  def toogle
      @outputdevice = Outputdevice.find(request[:id])
      @outputdevice.toogle
      @outputdevice.save
    respond_to do |format|
    format.html { redirect_to outputdevices_url, notice: "Plus one for '#{@outputdevice.name}'."}
    format.json { render json: @outputdevice }
    end
  end


  # GET /outputdevices
  # GET /outputdevices.json
  def index
    @outputdevices = Outputdevice.all
  end

  # GET /outputdevices/1
  # GET /outputdevices/1.json
  def show
  end

  # GET /outputdevices/new
  def new
    @outputdevice = Outputdevice.new
  end

  # GET /outputdevices/1/edit
  def edit
  end

  # POST /outputdevices
  # POST /outputdevices.json
  def create
    @outputdevice = Outputdevice.new(outputdevice_params)

    respond_to do |format|
      if @outputdevice.save
        format.html { redirect_to @outputdevice, notice: 'Outputdevice was successfully created.' }
        format.json { render action: 'show', status: :created, location: @outputdevice }
      else
        format.html { render action: 'new' }
        format.json { render json: @outputdevice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outputdevices/1
  # PATCH/PUT /outputdevices/1.json
  def update
    respond_to do |format|
      if @outputdevice.update(outputdevice_params)
        format.html { redirect_to @outputdevice, notice: 'Outputdevice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @outputdevice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outputdevices/1
  # DELETE /outputdevices/1.json
  def destroy
    @outputdevice.destroy
    respond_to do |format|
      format.html { redirect_to outputdevices_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outputdevice
      @outputdevice = Outputdevice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outputdevice_params
      params.require(:outputdevice).permit(:name, :statuso)
    end
end
