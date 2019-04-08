class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :name
      t.string :display_name
      t.string :description
      t.string :display_order

      t.timestamps
    end
  end
end
