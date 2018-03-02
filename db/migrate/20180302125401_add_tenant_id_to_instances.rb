class AddTenantIdToInstances < ActiveRecord::Migration
  def change
    add_column :instances, :tenant_id, :string
  end
end
