class CreateCompanyBranches < ActiveRecord::Migration[7.0]
  def change
    create_table :company_branches, id: :uuid do |t|
      t.references :company, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
