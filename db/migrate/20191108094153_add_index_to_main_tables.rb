class AddIndexToMainTables < ActiveRecord::Migration[6.0]
  def change
    add_index :roles, :code, unique: true
    add_index :permissions, :code, unique: true
    add_index :menus, :code, unique: true
    add_index :menu_elements, :code, unique: true
    add_index :sessions, :token, unique: true
  end
end
