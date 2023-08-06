# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_static_arrays
  before_action :create_default_guest_mtu
  before_action :setup_command_center_links

  ACTION_ICONS = {
    'command_center' => 'dashboard',
    'stores' => 'store',
    'branches' => 'local_convenience_store',
    'products' => 'inventory',
    'services' => 'inventory_2',
    'on_demand_services' => 'cleaning_services',
    'treasury' => 'account_balance',
    'support' => 'live_help',
    'staffs' => 'groups',
    'property' => 'real_estate_agent'
  }.freeze

  ACTION_FAMILY = {
    'branches' => 'stores',
    'products' => 'branches',
    'services' => 'branches',
    'staffs' => 'stores'
  }.freeze

  SKIP_COMMAND_CENTER_ACTIONS = %w[create_default_guest_mtu set_static_arrays method_arrays data_count
                                   has_parent has_children setup_command_center_links ignore_suggester
                                   setup_command_center get_action_level].freeze

  SKIP_ACTIONS_WITHOUT_OWNER = %w[owners stores branches staffs products services].freeze
  SKIP_ACTIONS_WITHOUT_PROPERTY = %w[property].freeze
  SKIP_ACTIONS_WITHOUT_SERVICE_PROVIDER = ['on_demand_services'].freeze

  def set_static_arrays
    @search_categories = ['Products', 'Services', 'On Demand Service', 'Accomodation', 'Government Services'].freeze
  end

  def create_default_guest_mtu
    @guest_mtu = Mtu.find_by(email: 'guest@logistics.com')
    return unless @guest_mtu.nil?

    @guest_mtu = Mtu.create!(jina: 'Guest', email: 'guest@logistics.com', password: 'guest1234',
                               password_confirmation: 'guest1234')
  end

  def setup_command_center_links
    return if current_mtu.nil?
  
    @action_links = []
    owner = current_mtu.owner
    staff = current_mtu.staffs
  
    CommandCenterController.action_methods.sort.map do |action|
      next if SKIP_COMMAND_CENTER_ACTIONS.include?(action)
      next if current_mtu.nil? || (owner.blank? && staff.blank? && SKIP_ACTIONS_WITHOUT_OWNER.include?(action))
  
      @action_links << OpenStruct.new(
        name: action,
        path: "#{root_url}#{action}",
        icon: ACTION_ICONS[action],
        has_children: has_children(action),
        has_parent: has_parent(action),
        action_level: get_action_level(action),
        parent: ACTION_FAMILY[action],
        data_count: data_count(action, owner),
        get_started_link: "#{root_url}#{action}/new",
        debug: "Action: #{action}, Icon: #{ACTION_ICONS[action]}"
      )
    end
  
    @owner = owner
    @staff = staff
  end  

  def data_count(action, owner)
    case action
    when 'stores'
      owner.stores.count
    when 'branches'
      owner.branches.count
    when 'products'
      owner.products.count
    when 'services'
      owner.services.count
    when 'staffs'
      owner.staffs.count
    end
  end

  def has_parent(action)
    %w[
      branches
      products
      services
      staffs
    ].include? action
  end

  def has_children(action)
    %w[stores branches].include? action
  end

  def get_action_level(action)
    if has_parent(action) && has_children(action)
      2
    elsif has_parent(action) && !has_children(action)
      3
    elsif !has_parent(action) && has_children(action)
      1
    else
      4
    end
  end
end
