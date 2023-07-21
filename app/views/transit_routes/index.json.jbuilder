# frozen_string_literal: true

json.array! @transit_routes, partial: 'transit_routes/transit_route', as: :transit_route
