# frozen_string_literal: true

json.array! @transit_stops, partial: 'transit_stops/transit_stop', as: :transit_stop
