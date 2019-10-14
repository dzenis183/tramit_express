# frozen_string_literal: true

class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      ## uuid token
      t.uuid     :token, null: false, default: 'gen_random_uuid()'
      t.uuid     :token_temp, null: false, default: 'gen_random_uuid()'

      ## fields
      t.string  :title, null: false, default: ''
      t.json    :raw_form, null: false, default: ''
      t.string  :form_code, null: false, default: ''
      t.boolean :is_payment_required, null: false, default: false
      t.float   :amount, null: false, default: 0.0
      t.boolean :publish, null: false, default: false

      ## references
      t.references :category, foreign_key: true

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
