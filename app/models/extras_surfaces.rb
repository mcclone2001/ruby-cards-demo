class ExtrasSurfaces < ApplicationRecord
    belongs_to :extra
    belongs_to :surface, dependent: :destroy
    self.primary_key = "extra_id"
end