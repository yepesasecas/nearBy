class CreateBeacons < ActiveRecord::Migration[5.0]
  def change
    create_table :beacons do |t|
      t.integer :uuid
      t.integer :major
      t.integer :minor
      t.integer :space_id
      t.string :key

      t.timestamps
    end
  end
end
