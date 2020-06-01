class CardsController < ApplicationController

    def index
        render :json => nil
    end

    def new
        render :json => nil
    end

    def create
        card = CardBuilder.new.new_empty_card(card_params[:title])

        if card.save
            render :json => card
        else
            render :json => card.errors
        end
    end

    def show
        render json: Card.find(params[:id]), include: '**'
    end

    def edit
        render :json => nil
    end

    def update
        render :json => nil
    end

    def destroy
        Card.find(params[:id]).destroy
        render :json => nil
    end

    private
        def card_params
            params.require(:card).permit(:title)
        end
end
