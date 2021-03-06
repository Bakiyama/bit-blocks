class CreateBlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :blocks do |t|
      t.integer :value_id,   null: false
      t.text :comment,   null: false
      t.references :user,  foreign_key: true
      t.references :purpose,  foreign_key: true
      t.timestamps
    end
  end
end
