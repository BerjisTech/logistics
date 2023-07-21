class TransitsController < ApplicationController
  before_action :set_transit, only: %i[ show edit update destroy ]

  # GET /transits or /transits.json
  def index
    @transits = Transit.all
  end

  # GET /transits/1 or /transits/1.json
  def show
  end

  # GET /transits/new
  def new
    @transit = Transit.new
  end

  # GET /transits/1/edit
  def edit
  end

  # POST /transits or /transits.json
  def create
    @transit = Transit.new(transit_params)

    respond_to do |format|
      if @transit.save
        format.html { redirect_to transit_url(@transit), notice: "Transit was successfully created." }
        format.json { render :show, status: :created, location: @transit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transits/1 or /transits/1.json
  def update
    respond_to do |format|
      if @transit.update(transit_params)
        format.html { redirect_to transit_url(@transit), notice: "Transit was successfully updated." }
        format.json { render :show, status: :ok, location: @transit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transits/1 or /transits/1.json
  def destroy
    @transit.destroy

    respond_to do |format|
      format.html { redirect_to transits_url, notice: "Transit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transit
      @transit = Transit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transit_params
      params.require(:transit).permit(:company_branch_id, :transit_route_id)
    end
end
