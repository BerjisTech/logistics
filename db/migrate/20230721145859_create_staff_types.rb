class CreateStaffTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :staff_types, id: :uuid do |t|

      t.timestamps
    end
  end
end
