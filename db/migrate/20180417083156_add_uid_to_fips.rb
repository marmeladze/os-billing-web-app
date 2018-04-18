class AddUidToFips < ActiveRecord::Migration
  def change
    add_column :fips, :uid, :string
  end
end
