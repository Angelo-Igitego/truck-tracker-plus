class CreateTripUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :trip_updates do |t|
      t.references :trip, foreign_key: true
      t.string :location_details
      t.datetime :eta_border
      t.datetime :eta_site
      t.integer :updated_by_user_id
      t.decimal :latitude, precision: 10, scale: 8
      t.decimal :longitude, precision: 11, scale: 8
      t.string :country
      t.string :province
      t.string :district

      t.timestamps
    end
  end
end
