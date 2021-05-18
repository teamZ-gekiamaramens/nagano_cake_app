class Public::DeliveriesController < ApplicationController


    def create
        @deliverie = Deliverie.new
        @deliverie = Deliverie.new(deliverie_params)
        @deliverie.save
        redirect_to deliveries_path
    end

    def index
        @deliveries = Deliverie.all
    end

    private

    def deliverie_params
        params.require(:deliverie).permit(:name, :address, :postal_code)
    end
end




