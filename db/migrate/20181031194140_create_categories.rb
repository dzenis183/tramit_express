# frozen_string_literal: true

class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      ## uuid token
      t.uuid     :token, null: false, default: 'gen_random_uuid()'
      t.uuid     :token_temp, null: false, default: 'gen_random_uuid()'

      ## fields
      t.string :title, null: false, default: ''
      t.string :category_code, null: false, default: ''
      t.boolean :publish, null: false, default: false

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
