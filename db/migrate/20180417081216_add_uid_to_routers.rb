class AddUidToRouters < ActiveRecord::Migration
  def change
    add_column :routers, :uid, :string
  end
end
