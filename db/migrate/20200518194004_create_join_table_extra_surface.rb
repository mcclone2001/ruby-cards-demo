class CreateJoinTableExtraSurface < ActiveRecord::Migration[6.0]
  def change
    create_join_table :extras, :surfaces do |t|
      # t.index [:extra_id, :surface_id]
      # t.index [:surface_id, :extra_id]
    end
  end
end
