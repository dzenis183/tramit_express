# frozen_string_literal: true

class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      ## uuid token
      t.uuid     :token, null: false, default: 'gen_random_uuid()'
      t.uuid     :token_temp, null: false, default: 'gen_random_uuid()'

      ## fields
      t.string  :first_name, null: false, default: ''
      t.string  :last_name, null: false, default: ''
      t.string  :email, null: false, default: ''
      t.bigint  :telephone_number
      t.bigint  :fax_number
      t.text    :street_address, null: false, default: ''
      t.text    :address_line_2, null: false, default: ''
      t.string  :city, null: false, default: ''
      t.string  :state, null: false, default: ''
      t.integer :zip_code
      t.string  :country, null: false, default: ''
      t.text    :additional_information, null: false, default: ''
      t.date    :date_of_birth
      t.string  :customer_code, null: false

      ## references
      t.references :agent, foreign_key: true

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
