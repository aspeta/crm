class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :title
      t.string :fname
      t.string :mname
      t.string :lname
      t.string :suffix

      t.timestamps
    end
  end
end
