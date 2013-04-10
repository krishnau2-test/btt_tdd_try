class CreateKine < ActiveRecord::Migration
  def change
    create_table :kine do |t|
      t.string :name
      t.integer :age
      t.string :zipcode

      t.timestamps
    end
  end
end
