class CreateRawnames < ActiveRecord::Migration
  def change
    create_table :rawnames do |t|
      t.integer :system_id
      t.text :system_name

      t.timestamps null: false
    end
  end
end
