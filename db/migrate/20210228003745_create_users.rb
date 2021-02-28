class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :access_id 
      t. integer :store_id
      t.timestamps
    end
  end
end
