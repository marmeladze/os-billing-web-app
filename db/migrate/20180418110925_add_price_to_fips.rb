class AddPriceToFips < ActiveRecord::Migration
  def change
    add_column :fips, :price, :float, default: 0.00
  end
end
