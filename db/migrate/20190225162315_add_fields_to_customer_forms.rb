class AddFieldsToCustomerForms < ActiveRecord::Migration[5.2]
  def change
    add_reference :customer_forms, :customer, foreign_key: true
  end
end
