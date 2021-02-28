class AddSkuToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :sku, :string
    add_column :cards, :manufacturer_id, :integer
  end
end
