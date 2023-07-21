# frozen_string_literal: true

json.array! @transits, partial: 'transits/transit', as: :transit
