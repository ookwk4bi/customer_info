class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.integer :number
      t.string :status
      t.string :point


      t.timestamps
    end
  end
end
