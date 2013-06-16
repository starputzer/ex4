class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.boolean :systemode
      t.datetime :systemtime
      t.integer :maxoutputdevice

      t.timestamps
    end
  end
end
