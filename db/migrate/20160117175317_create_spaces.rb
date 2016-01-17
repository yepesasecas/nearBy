class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.string :name
      t.integer :owner_id

      t.timestamps
    end
  end
end
