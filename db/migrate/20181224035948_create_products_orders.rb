class CreateProductsOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :products_orders do |t|
      t.string :order_id
      t.string :product_id
      t.float :price
      t.integer :amount
      t.string :status

      t.timestamps
    end
  end
end
