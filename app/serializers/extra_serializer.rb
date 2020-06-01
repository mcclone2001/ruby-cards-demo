class ExtraSerializer < ActiveModel::Serializer
  has_one :extras_surfaces
  has_one :surface, through: :extra_surface
  attributes *(ClassExplorer.get_attributes_except(Extra, ["card_id"]))
end
