class CreateActions < ActiveRecord::Migration[5.0]
  def change
    create_table :actions do |t|
      t.integer :space_id
      t.string :url

      t.timestamps
    end
  end
end
