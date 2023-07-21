# frozen_string_literal: true

class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients, id: :uuid do |t|
      t.references :company_branch, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
