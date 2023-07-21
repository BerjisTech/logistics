# frozen_string_literal: true

json.array! @storages, partial: 'storages/storage', as: :storage
