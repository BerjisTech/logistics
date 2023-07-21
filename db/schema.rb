# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_230_721_151_536) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'pgcrypto'
  enable_extension 'plpgsql'

  create_table 'clients', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'company_branch_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['company_branch_id'], name: 'index_clients_on_company_branch_id'
  end

  create_table 'companies', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'owner_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['owner_id'], name: 'index_companies_on_owner_id'
  end

  create_table 'company_branches', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'company_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['company_id'], name: 'index_company_branches_on_company_id'
  end

  create_table 'messagings', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'sender'
    t.uuid 'receiver'
    t.uuid 'replying_to'
    t.string 'message'
    t.boolean 'read'
    t.boolean 'deleted'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'mtus', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.string 'confirmation_token'
    t.datetime 'confirmed_at'
    t.datetime 'confirmation_sent_at'
    t.string 'unconfirmed_email'
    t.integer 'failed_attempts', default: 0, null: false
    t.string 'unlock_token'
    t.datetime 'locked_at'
    t.string 'jina_ya_lwanza'
    t.string 'jina_ya_mwisho'
    t.string 'namba_ya_simu'
    t.string 'mtaa'
    t.string 'nchi'
    t.string 'posta'
    t.string 'jina'
    t.boolean 'admin', default: false
    t.boolean 'superadmin', default: false
    t.boolean 'active', default: false
    t.boolean 'banned', default: false
    t.boolean 'suspended', default: false
    t.boolean 'deleted', default: false
    t.boolean 'verified', default: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['confirmation_token'], name: 'index_mtus_on_confirmation_token', unique: true
    t.index ['email'], name: 'index_mtus_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_mtus_on_reset_password_token', unique: true
    t.index ['unlock_token'], name: 'index_mtus_on_unlock_token', unique: true
  end

  create_table 'occupied_storages', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'storage_id', null: false
    t.uuid 'client_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['client_id'], name: 'index_occupied_storages_on_client_id'
    t.index ['storage_id'], name: 'index_occupied_storages_on_storage_id'
  end

  create_table 'owners', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'mtu_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['mtu_id'], name: 'index_owners_on_mtu_id'
  end

  create_table 'products', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'company_branch_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['company_branch_id'], name: 'index_products_on_company_branch_id'
  end

  create_table 'routes', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'company_branch_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['company_branch_id'], name: 'index_routes_on_company_branch_id'
  end

  create_table 'staff_types', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'staffs', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'company_branch_id', null: false
    t.uuid 'mtu_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['company_branch_id'], name: 'index_staffs_on_company_branch_id'
    t.index ['mtu_id'], name: 'index_staffs_on_mtu_id'
  end

  create_table 'storages', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'company_branch_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['company_branch_id'], name: 'index_storages_on_company_branch_id'
  end

  create_table 'transactions', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'company_branch_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['company_branch_id'], name: 'index_transactions_on_company_branch_id'
  end

  create_table 'transit_routes', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'company_branch_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['company_branch_id'], name: 'index_transit_routes_on_company_branch_id'
  end

  create_table 'transit_stops', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'company_branch_id', null: false
    t.uuid 'transit_route_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['company_branch_id'], name: 'index_transit_stops_on_company_branch_id'
    t.index ['transit_route_id'], name: 'index_transit_stops_on_transit_route_id'
  end

  create_table 'transits', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'company_branch_id', null: false
    t.uuid 'transit_route_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['company_branch_id'], name: 'index_transits_on_company_branch_id'
    t.index ['transit_route_id'], name: 'index_transits_on_transit_route_id'
  end

  create_table 'vehicles', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'company_branch_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['company_branch_id'], name: 'index_vehicles_on_company_branch_id'
  end

  add_foreign_key 'clients', 'company_branches'
  add_foreign_key 'companies', 'owners'
  add_foreign_key 'company_branches', 'companies'
  add_foreign_key 'occupied_storages', 'clients'
  add_foreign_key 'occupied_storages', 'storages'
  add_foreign_key 'owners', 'mtus'
  add_foreign_key 'products', 'company_branches'
  add_foreign_key 'routes', 'company_branches'
  add_foreign_key 'staffs', 'company_branches'
  add_foreign_key 'staffs', 'mtus'
  add_foreign_key 'storages', 'company_branches'
  add_foreign_key 'transactions', 'company_branches'
  add_foreign_key 'transit_routes', 'company_branches'
  add_foreign_key 'transit_stops', 'company_branches'
  add_foreign_key 'transit_stops', 'transit_routes'
  add_foreign_key 'transits', 'company_branches'
  add_foreign_key 'transits', 'transit_routes'
  add_foreign_key 'vehicles', 'company_branches'
end
