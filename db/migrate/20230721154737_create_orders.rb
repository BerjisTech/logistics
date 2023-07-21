class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders, id: :uuid do |t|
      t.references :company_branch, null: false, foreign_key: true, type: :uuid
      t.references :client, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
