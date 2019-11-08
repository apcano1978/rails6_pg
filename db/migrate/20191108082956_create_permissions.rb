class CreatePermissions < ActiveRecord::Migration[6.0]
  def change
    create_table :permissions do |t|
      t.string :code
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
