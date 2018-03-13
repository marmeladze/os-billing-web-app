class AddCreationToVolumes < ActiveRecord::Migration
  def change
    add_column :volumes, :creation, :datetime
  end
end
