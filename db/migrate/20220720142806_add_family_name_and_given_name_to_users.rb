class AddFamilyNameAndGivenNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :family_name, :string
    add_column :users, :given_name, :string
  end
end
