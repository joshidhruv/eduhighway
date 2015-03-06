class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.text :solar_name
      t.integer :ship_jumps
      t.datetime :date

      t.timestamps null: false
    end
  end
end
