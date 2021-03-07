class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.string :mobile
      t.string :password_digest
      t.boolean :admin
      t.integer :available_hours
      t.timestamps
    end
  end
end
