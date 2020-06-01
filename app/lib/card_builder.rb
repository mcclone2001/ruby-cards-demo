class CardBuilder
    def new_empty_card(title)
        card = Card.new(title: title)
        card.build_surface

        card.build_group
        card.group.build_surface

        extra = card.extra.build
        extras_surfaces = extra.build_extras_surfaces
        extras_surfaces.build_surface

        card
    end
end