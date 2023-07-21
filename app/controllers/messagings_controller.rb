# frozen_string_literal: true

class MessagingsController < ApplicationController
  before_action :set_messaging, only: %i[show edit update destroy]

  # GET /messagings or /messagings.json
  def index
    @messagings = Messaging.all
  end

  # GET /messagings/1 or /messagings/1.json
  def show; end

  # GET /messagings/new
  def new
    @messaging = Messaging.new
  end

  # GET /messagings/1/edit
  def edit; end

  # POST /messagings or /messagings.json
  def create
    @messaging = Messaging.new(messaging_params)

    respond_to do |format|
      if @messaging.save
        format.html { redirect_to messaging_url(@messaging), notice: 'Messaging was successfully created.' }
        format.json { render :show, status: :created, location: @messaging }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @messaging.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messagings/1 or /messagings/1.json
  def update
    respond_to do |format|
      if @messaging.update(messaging_params)
        format.html { redirect_to messaging_url(@messaging), notice: 'Messaging was successfully updated.' }
        format.json { render :show, status: :ok, location: @messaging }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @messaging.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messagings/1 or /messagings/1.json
  def destroy
    @messaging.destroy

    respond_to do |format|
      format.html { redirect_to messagings_url, notice: 'Messaging was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_messaging
    @messaging = Messaging.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def messaging_params
    params.require(:messaging).permit(:sender, :receiver, :replying_to, :message, :read, :deleted)
  end
end
