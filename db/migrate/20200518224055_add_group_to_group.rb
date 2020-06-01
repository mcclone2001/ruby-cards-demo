class AddGroupToGroup < ActiveRecord::Migration[6.0]
  def change
    add_reference :groups, :group, null: true, foreign_key: true
  end
end
