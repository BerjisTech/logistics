# frozen_string_literal: true

class TransitStopsController < ApplicationController
  before_action :set_transit_stop, only: %i[show edit update destroy]

  # GET /transit_stops or /transit_stops.json
  def index
    @transit_stops = TransitStop.all
  end

  # GET /transit_stops/1 or /transit_stops/1.json
  def show; end

  # GET /transit_stops/new
  def new
    @transit_stop = TransitStop.new
  end

  # GET /transit_stops/1/edit
  def edit; end

  # POST /transit_stops or /transit_stops.json
  def create
    @transit_stop = TransitStop.new(transit_stop_params)

    respond_to do |format|
      if @transit_stop.save
        format.html { redirect_to transit_stop_url(@transit_stop), notice: 'Transit stop was successfully created.' }
        format.json { render :show, status: :created, location: @transit_stop }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transit_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transit_stops/1 or /transit_stops/1.json
  def update
    respond_to do |format|
      if @transit_stop.update(transit_stop_params)
        format.html { redirect_to transit_stop_url(@transit_stop), notice: 'Transit stop was successfully updated.' }
        format.json { render :show, status: :ok, location: @transit_stop }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transit_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transit_stops/1 or /transit_stops/1.json
  def destroy
    @transit_stop.destroy

    respond_to do |format|
      format.html { redirect_to transit_stops_url, notice: 'Transit stop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_transit_stop
    @transit_stop = TransitStop.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def transit_stop_params
    params.require(:transit_stop).permit(:company_branch_id, :transit_route_id)
  end
end
