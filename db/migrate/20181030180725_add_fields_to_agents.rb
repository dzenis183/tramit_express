# frozen_string_literal: true

class AddFieldsToAgents < ActiveRecord::Migration[5.2]
  def change
    add_column :agents, :first_name, :string, null: false, default: ''
    add_column :agents, :last_name, :string, null: false, default: ''
    add_column :agents, :agent_code, :string, null: false, default: ''
  end
end
