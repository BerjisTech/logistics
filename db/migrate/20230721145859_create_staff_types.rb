# frozen_string_literal: true

class CreateStaffTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :staff_types, id: :uuid, &:timestamps
  end
end
