class CreateSchedulers < ActiveRecord::Migration
  def change
    create_table :schedulers do |t|
      t.datetime :starttime
      t.datetime :endtime
      t.integer :outputdeviceid

      t.timestamps
    end
  end
end
