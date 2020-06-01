class Group < ApplicationRecord
    has_many :subgroups, class_name: "Group", foreign_key: "group_id"
    belongs_to :supergroup, class_name: "Group", optional: true
    belongs_to :surface, dependent: :destroy
    # has_many :card

    def has_children?
        has_subgroups? && has_cards?
    end

    def has_subgroups?
        subgroups.size != 0
    end

    def has_cards?
        Card.where(group_id: id).exists?
    end
end
