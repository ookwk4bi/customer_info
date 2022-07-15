class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
    t.string :family_name, null: false, length: { maximum: 20 }
    t.string :given_name,  null: false, length: { maximum: 20 }
    t.string :detail,       null: false

      t.timestamps
    end
  end
end
