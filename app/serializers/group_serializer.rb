class GroupSerializer < ActiveModel::Serializer
  belongs_to :surface
  belongs_to :supergroup, class_name: "Group", optional: true
  attributes *(ClassExplorer.get_attributes(Group))
end
