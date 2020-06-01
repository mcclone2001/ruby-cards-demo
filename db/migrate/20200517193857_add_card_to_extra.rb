class AddCardToExtra < ActiveRecord::Migration[6.0]
  def change
    add_reference :extras, :card, null: false, foreign_key: true
  end
end
