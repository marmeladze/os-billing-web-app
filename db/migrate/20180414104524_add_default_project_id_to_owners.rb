class AddDefaultProjectIdToOwners < ActiveRecord::Migration
  def change
    add_column :owners, :default_project_id, :string
  end
end
