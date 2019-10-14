# frozen_string_literal: true

class AddFieldsToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :first_name, :string, null: false, default: ''
    add_column :admins, :last_name, :string, null: false, default: ''
    add_column :admins, :admin_code, :string, null: false, default: ''
  end
end
