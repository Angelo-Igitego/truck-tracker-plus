class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :business_name
      t.string :po_box
      t.string :phone
      t.string :email
      t.string :contact_person_names
      t.string :contact_person_phone
      t.string :tin_number
      t.string :office_location

      t.timestamps
    end
  end
end
