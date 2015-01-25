class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_address
      t.integer :postcode
      t.string :suburb

      t.timestamps null: false
    end
  end
end
