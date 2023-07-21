# frozen_string_literal: true

class CommandCenterController < ApplicationController
  before_action :authenticate_mtu!

  def command_center
    redirect_to cc_path if params[:company] && current_mtu.companies.find_by(id: params[:company])
  end
end
