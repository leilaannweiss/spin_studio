class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.integer :studio_id
      t.integer :spin_class_id

      t.timestamps
    end
  end
end
