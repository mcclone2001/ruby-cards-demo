class AddSurfaceToCard < ActiveRecord::Migration[6.0]
  def change
    add_reference :cards, :surface, null: true, foreign_key: true
  end
end
