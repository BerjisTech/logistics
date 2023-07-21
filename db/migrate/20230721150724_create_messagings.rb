# frozen_string_literal: true

class CreateMessagings < ActiveRecord::Migration[7.0]
  def change
    create_table :messagings, id: :uuid do |t|
      t.uuid :sender
      t.uuid :receiver
      t.uuid :replying_to
      t.string :message
      t.boolean :read
      t.boolean :deleted

      t.timestamps
    end
  end
end
