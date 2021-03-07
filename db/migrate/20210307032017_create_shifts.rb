class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.string :location
      t.string :role
      t.integer :hours
      t.datetime :start_time
      t.integer :department_id
      t.timestamps
    end
  end
end
