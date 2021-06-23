class WinesController < ApplicationController
    def index
        @wines = Wine.all
    end

    def show
        @wine = Wine.find(params[:id])
    end

    def new
        @wine = Wine.new
    end

    def create
        wine = Wine.create(wine_params)
        redirect_to wine
    end

    private
    
    def wine_params
        params.require(:wine).permit(:title, :country, :rating, :opinion, :price)
    end

end
