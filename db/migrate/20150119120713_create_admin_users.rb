class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
      t.string :user_name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
