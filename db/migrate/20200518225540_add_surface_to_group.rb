class AddSurfaceToGroup < ActiveRecord::Migration[6.0]
  def change
    add_reference :groups, :surface, null: true, foreign_key: true
  end
end
