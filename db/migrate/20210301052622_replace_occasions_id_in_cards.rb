class ReplaceOccasionsIdInCards < ActiveRecord::Migration[6.1]
  def change
    remove_column :cards, :name_of, :string
    add_column :cards, :occasion_id, :integer

  end
end
