class CreateReaders < ActiveRecord::Migration[5.0]
  def change
    create_table :readers do |t|
      t.string :email, null: false, index: true
      t.string :first_name, null: false
      t.string :last_name, null: false, index: true
      t.date   :dob, null: false
      t.string :phone, length: 10, index: true
      t.string :address_line1, null: false
      t.string :address_line2
      t.string :city, null: false
      t.string :state, length: 2, null: false
      t.string :zip, length: 9, null: false
      t.boolean :active, null: false, default: true
      t.timestamps
    end
  end
end
