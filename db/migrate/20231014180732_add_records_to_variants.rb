class AddRecordsToVariants < ActiveRecord::Migration[7.0]
  def change
    add_reference :variants, :record, null: false, foreign_key: true
  end
end
