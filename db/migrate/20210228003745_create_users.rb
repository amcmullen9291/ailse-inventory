class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :password 
      t.integer :store_id
      t.string :EmployeeInit 
      t.string :password_digest
      t.string :notes
      t.string :email
      t.timestamps
    end
  end
end
