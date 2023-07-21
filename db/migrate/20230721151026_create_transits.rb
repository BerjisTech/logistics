# frozen_string_literal: true

class CreateTransits < ActiveRecord::Migration[7.0]
  def change
    create_table :transits, id: :uuid do |t|
      t.references :company_branch, null: false, foreign_key: true, type: :uuid
      t.references :transit_route, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
