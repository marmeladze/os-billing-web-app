class CreateCpuLoads < ActiveRecord::Migration
  def change
    create_table :cpu_loads do |t|
      t.references :instance, index: true, foreign_key: true
      t.float :percentage
      t.datetime :observed_at

      t.timestamps null: false
    end
  end
end
