class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string   :username
      t.string   :password
      t.string   :avatar

      t.timestamps null: false
    end
  end
end
