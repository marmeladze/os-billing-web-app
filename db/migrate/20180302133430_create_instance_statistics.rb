class CreateInstanceStatistics < ActiveRecord::Migration
  def change
    create_table :instance_statistics do |t|
      t.float :total_hours
      t.float :total_local_gb_usage
      t.float :total_memory_mb_usage
      t.float :total_vcpus_usage
      t.references :instance, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
