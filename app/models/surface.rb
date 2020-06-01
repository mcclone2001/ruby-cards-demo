class Surface < ApplicationRecord
    has_many :cards
    attribute  :x, :integer, default:10
    attribute  :y, :integer, default:10
    attribute  :width, :integer, default:100
    attribute  :height, :integer, default:75
end
