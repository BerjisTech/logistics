class CreateOccupiedStorages < ActiveRecord::Migration[7.0]
  def change
    create_table :occupied_storages, id: :uuid do |t|
      t.references :storage, null: false, foreign_key: true, type: :uuid
      t.references :client, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
