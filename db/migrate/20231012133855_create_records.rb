class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.string :album
      t.string :artist
      t.integer :play_speed
      t.boolean :double_lp

      t.timestamps
    end
  end
end
