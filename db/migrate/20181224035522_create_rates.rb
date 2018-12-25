class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.string :user_id
      t.string :product_id
      t.string :rate

      t.timestamps
    end
  end
end
