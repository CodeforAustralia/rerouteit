class CreateTransportModes < ActiveRecord::Migration
  def change
    create_table :transport_modes do |t|
      t.string :name, null: false
      t.string :code, null: false
      t.decimal :kg_co2_per_km, null: false, precision: 10, scale: 5

      t.timestamps
    end

    add_index :transport_modes, :code, unique: true
  end
end
