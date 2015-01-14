class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :addr1
      t.string :addr2
      t.string :city
      t.string :state
      t.string :zip
      t.references :customer, index: true

      t.timestamps
    end
  end
end
