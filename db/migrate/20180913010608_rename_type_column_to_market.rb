class RenameTypeColumnToMarket < ActiveRecord::Migration[5.2]
  def change
      rename_column :markets, :type, :type_id
  end
end
