# frozen_string_literal: true

json.array! @messagings, partial: 'messagings/messaging', as: :messaging
