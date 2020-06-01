class Extra < ApplicationRecord
    belongs_to :card
    has_one :extras_surfaces, dependent: :destroy
    has_one :surface, through: :extras_surfaces#, dependent: :destroy
    attribute :name, :string, default: "Extra"
    attribute :extra_type, :string, default: "Default"
    attribute :meta, :json, default: {}
end
