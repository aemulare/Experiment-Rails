class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :author, null: false, index: true
      t.string :title, null: false, index: true
      t.date :published_on, null: false
      t.string :publisher, null: false
      t.string :language, null: false
      t.string :binding_format
      t.string :isbn, null: false
      t.decimal :price, precision: 8, scale: 2
      t.string :dewey_code, index: true
      t.timestamps
      
      t.index :isbn, unique: true
    end
  end
end
