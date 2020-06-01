class CardSerializer < ActiveModel::Serializer
  belongs_to :surface
  belongs_to :group
  has_many :extra
  attributes *(ClassExplorer.get_attributes_except(Card, ["surface_id"]))
end
