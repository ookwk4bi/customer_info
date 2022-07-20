class AddAccountIdToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_reference :customers, :account, index: true, foreign_key: true
  end
end
