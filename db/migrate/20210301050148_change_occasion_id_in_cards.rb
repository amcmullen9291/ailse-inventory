class ChangeOccasionIdInCards < ActiveRecord::Migration[6.1]
  def change
    remove_column :cards, :occasion_id, :integer 
    add_column :cards, :occassion, :string
  end
end
