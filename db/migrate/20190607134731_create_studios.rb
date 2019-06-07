class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.string :room
      t.integer :gym_id

      t.timestamps
    end
  end
end
