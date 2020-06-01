class CreateSurfaces < ActiveRecord::Migration[6.0]
  def change
    create_table :surfaces do |t|
      t.integer :x
      t.integer :y
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
