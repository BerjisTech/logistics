# frozen_string_literal: true

class CommandCenterController < ApplicationController
  before_action :authenticate_mtu!
  before_action :setup_command_center,
                only: %i[command_center property stores branches staffs products services on_demand_services treasury
                         support]

  def command_center
    redirect_to cc_path if params[:company] && current_mtu.companies.find_by(id: params[:company]).nil?
  end

  def setup_command_center
    redirect_to new_on_demand_service_path if @service_provider.nil? && action_name == 'on_demand_services'
    redirect_to new_company_path if @owner.nil? && %w[stores branches staffs products services].include?(action_name)
    redirect_to new_accomodation_path if @owner.nil? && %w[property].include?(action_name)
  end

  def stores
    page = params[:page] || 1
    @stores = @owner.stores.page(page).per(10)
  end

  def branches
    page = params[:page] || 1
    @branches = @owner.branches.page(page).per(10)
  end

  def staffs
    page = params[:page] || 1
    @staffs = @owner.staffs.page(page).per(10)
  end

  def products
    page = params[:page] || 1
    @products = @owner.products.page(page).per(10)
  end

  def treasury; end

  def support; end

  def ignore_suggester
    current_mtu.update(beginner_guide: false) if params[:suggester] == 'owner'
    if params[:suggester] == 'both'
      current_mtu.update(beginner_guide: false)
    end
    if params[:suggester] == 'admin_reset'
      current_mtu.update(beginner_guide: true)
    end
    redirect_to operations_center_path
  end
end
