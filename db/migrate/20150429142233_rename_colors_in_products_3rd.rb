class RenameColorsInProducts3rd < ActiveRecord::Migration
  def change
  	rename_column :products, :color, :year
  end
end
