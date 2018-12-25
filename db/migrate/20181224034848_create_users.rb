class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, :id => false do |t|
      t.string :id
      t.string :user_name
      t.string :password
      t.string :birthday
      t.string :phone
      t.string :address
      t.string :gender
      t.string :avartar
      t.string :fullname
      t.string :status
      t.string :email
      t.string :role

      t.timestamps
    end
  end
end
