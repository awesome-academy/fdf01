class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders, :id => false do |t|
      t.string :id
      t.string :order_name
      t.integer :amount
      t.string :user_id
      t.string :status
      t.string :location

      t.timestamps
    end
  end
end
