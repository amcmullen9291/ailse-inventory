class FixTypeInCards < ActiveRecord::Migration[6.1]
  def change
    remove_column :cards, :occasion, :string
    add_column :cards, :name_of, :string

  end
end
