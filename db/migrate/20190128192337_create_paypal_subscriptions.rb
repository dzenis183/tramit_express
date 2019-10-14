# frozen_string_literal: true

class CreatePaypalSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :paypal_subscriptions do |t|
      ## uuid token
      t.uuid     :token, null: false, default: 'gen_random_uuid()'
      t.uuid     :token_temp, null: false, default: 'gen_random_uuid()'

      ## fields
      t.string :name, null: false, default: ''
      t.string :description, null: false, default: ''
      t.string :start_date, null: false, default: ''
      t.string :state, null: false, default: ''
      t.string :subscription_id, null: false, default: ''

      ## references
      t.references :agent, foreign_key: true
      t.references :paypal_plan, foreign_key: true

      ## discarded
      t.datetime :discarded_at
      t.index :discarded_at, unique: true

      ## token index
      t.index :token, unique: true
      t.index :token_temp, unique: true

      t.timestamps
    end
  end
end
