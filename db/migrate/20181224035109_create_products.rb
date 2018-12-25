class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products, :id => false do |t|
      t.string :id
      t.string :product_name
      t.float :price_product
      t.string :status
      t.string :rate
      t.string :image
      t.string :catalog_id
      t.string :menu_id
      t.integer :amount

      t.timestamps
    end
  end
end
