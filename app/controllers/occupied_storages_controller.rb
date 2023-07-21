class OccupiedStoragesController < ApplicationController
  before_action :set_occupied_storage, only: %i[ show edit update destroy ]

  # GET /occupied_storages or /occupied_storages.json
  def index
    @occupied_storages = OccupiedStorage.all
  end

  # GET /occupied_storages/1 or /occupied_storages/1.json
  def show
  end

  # GET /occupied_storages/new
  def new
    @occupied_storage = OccupiedStorage.new
  end

  # GET /occupied_storages/1/edit
  def edit
  end

  # POST /occupied_storages or /occupied_storages.json
  def create
    @occupied_storage = OccupiedStorage.new(occupied_storage_params)

    respond_to do |format|
      if @occupied_storage.save
        format.html { redirect_to occupied_storage_url(@occupied_storage), notice: "Occupied storage was successfully created." }
        format.json { render :show, status: :created, location: @occupied_storage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @occupied_storage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /occupied_storages/1 or /occupied_storages/1.json
  def update
    respond_to do |format|
      if @occupied_storage.update(occupied_storage_params)
        format.html { redirect_to occupied_storage_url(@occupied_storage), notice: "Occupied storage was successfully updated." }
        format.json { render :show, status: :ok, location: @occupied_storage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @occupied_storage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /occupied_storages/1 or /occupied_storages/1.json
  def destroy
    @occupied_storage.destroy

    respond_to do |format|
      format.html { redirect_to occupied_storages_url, notice: "Occupied storage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_occupied_storage
      @occupied_storage = OccupiedStorage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def occupied_storage_params
      params.require(:occupied_storage).permit(:storage_id, :client_id)
    end
end
