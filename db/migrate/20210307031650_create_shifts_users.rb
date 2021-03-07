class CreateShiftsUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts_users do |t|
      t.integer :user_id
      t.integer :shift_id
    end
  end
end
