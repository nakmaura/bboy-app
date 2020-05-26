class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :style
      t.string :crew
      t.integer :old
      t.integer :user_id
      t.text :video
      t.timestamps
    end
  end
end
