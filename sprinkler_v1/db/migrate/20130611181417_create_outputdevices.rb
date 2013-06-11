class CreateOutputdevices < ActiveRecord::Migration
  def change
    create_table :outputdevices do |t|
      t.string :name
      t.boolean :statuso

      t.timestamps
    end
  end
end
