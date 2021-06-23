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
end
