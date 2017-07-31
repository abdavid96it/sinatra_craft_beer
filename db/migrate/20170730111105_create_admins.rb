class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|

      t.string   :username
      t.string   :password
      t.string   :avatar

      t.timestamps null: false
    end
  end
end
