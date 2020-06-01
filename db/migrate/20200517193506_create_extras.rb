class CreateExtras < ActiveRecord::Migration[6.0]
  def change
    create_table :extras do |t|
      t.string :name
      t.string :extra_type
      t.text :meta

      t.timestamps
    end
  end
end
