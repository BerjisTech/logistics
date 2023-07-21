# frozen_string_literal: true

class TransitRoutesController < ApplicationController
  before_action :set_transit_route, only: %i[show edit update destroy]

  # GET /transit_routes or /transit_routes.json
  def index
    @transit_routes = TransitRoute.all
  end

  # GET /transit_routes/1 or /transit_routes/1.json
  def show; end

  # GET /transit_routes/new
  def new
    @transit_route = TransitRoute.new
  end

  # GET /transit_routes/1/edit
  def edit; end

  # POST /transit_routes or /transit_routes.json
  def create
    @transit_route = TransitRoute.new(transit_route_params)

    respond_to do |format|
      if @transit_route.save
        format.html { redirect_to transit_route_url(@transit_route), notice: 'Transit route was successfully created.' }
        format.json { render :show, status: :created, location: @transit_route }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transit_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transit_routes/1 or /transit_routes/1.json
  def update
    respond_to do |format|
      if @transit_route.update(transit_route_params)
        format.html { redirect_to transit_route_url(@transit_route), notice: 'Transit route was successfully updated.' }
        format.json { render :show, status: :ok, location: @transit_route }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transit_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transit_routes/1 or /transit_routes/1.json
  def destroy
    @transit_route.destroy

    respond_to do |format|
      format.html { redirect_to transit_routes_url, notice: 'Transit route was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_transit_route
    @transit_route = TransitRoute.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def transit_route_params
    params.require(:transit_route).permit(:company_branch_id)
  end
end
