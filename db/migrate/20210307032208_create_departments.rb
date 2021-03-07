class CreateDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :departments do |t|
      t.text :name
      t.text :head_quarters
      t.text :email
      t.string :contact_number
      t.timestamps
    end
  end
end
