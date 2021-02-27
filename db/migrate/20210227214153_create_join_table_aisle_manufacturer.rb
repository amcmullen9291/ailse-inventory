class CreateJoinTableAisleManufacturer < ActiveRecord::Migration[6.1]
  def change
    create_join_table :aisles, :manufacturers do |t|
      # t.index [:aisle_id, :manufacturer_id]
      # t.index [:manufacturer_id, :aisle_id]
    end
  end
end
