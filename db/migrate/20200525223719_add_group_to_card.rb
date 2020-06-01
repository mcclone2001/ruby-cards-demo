class AddGroupToCard < ActiveRecord::Migration[6.0]
  def change
    add_reference :cards, :group, null: false, foreign_key: true
  end
end
