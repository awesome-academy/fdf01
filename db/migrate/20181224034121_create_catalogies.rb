class CreateCatalogies < ActiveRecord::Migration[5.2]
  def change
    create_table :catalogies, :id => false do |t|
      t.string :id
      t.string :catalog_name
      t.string :status

      t.timestamps
    end
  end
end
