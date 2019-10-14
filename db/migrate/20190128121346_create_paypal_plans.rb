# frozen_string_literal: true

class CreatePaypalPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :paypal_plans do |t|
      ## uuid token
      t.uuid     :token, null: false, default: 'gen_random_uuid()'
      t.uuid     :token_temp, null: false, default: 'gen_random_uuid()'

      ## fields
      t.string :name, null: false, default: ''
      t.string :description, null: false, default: ''
      t.string :plan_type, null: false, default: ''
      t.integer :frequency_interval, null: false, default: 0
      t.string :frequency, null: false, default: ''
      t.integer :cycles, null: false, default: 0
      t.float :amount, null: false, default: 0.0
      t.string :payment_definitions_name, null: false, default: ''
      t.integer :max_fail_attempts, null: false, default: 0
      t.string :auto_bill_amount, null: false, default: ''
      t.string :initial_fail_amount_action, null: false, default: ''
      t.string :planid, null: false
      t.string :plan_state, null: false, default: ''
      t.string :payment_type, null: false, default: ''

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
