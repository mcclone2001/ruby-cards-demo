class Card < ApplicationRecord
    after_destroy :destroy_group_if_empty

    belongs_to :surface, dependent: :destroy
    belongs_to :group#, dependent: :destroy
    has_many :extra, dependent: :destroy

    def destroy_group_if_empty
        unless group.has_children?
            group.destroy
        end
    end
end
