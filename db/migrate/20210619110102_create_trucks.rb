class CreateTrucks < ActiveRecord::Migration[5.1]
  def change
    create_table :trucks do |t|
      t.string :model
      t.decimal :tare
      t.string :license_number
      t.string :unique_number

      t.timestamps
    end
  end
end
