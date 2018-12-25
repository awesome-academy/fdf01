class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus, :id => false do |t|
      t.string :id
      t.string :menu_name
      t.string :status

      t.timestamps
    end
  end
end
