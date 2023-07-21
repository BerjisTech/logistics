class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies, id: :uuid do |t|
      t.references :owner, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
