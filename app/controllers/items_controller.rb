class ItemsController < ApplicationController
   
    def index
        items = Item.all
        render json: items
    end

    def update
        item = Item.find(params[:id])
        if !quantity_full(item.id)
            item.update!(item_params)
            render json: item, status: :accepted
        else 
            render json: {errors: "Enough folks are bringing this item -- choose another one"}, status: :bad_request
        end
    end

    def destroy
        item = Item.find(params[:id])
        item.destroy
        render json: task, status: :ok
    end

    def create
        item = Item.create!(item_params)
        render json: item, status: :created
    end


    private

    def item_params
        params.permit(:id, :item_name, :quantity, :bringing => [])
    end 

    def quantity_full(id)
        item = Item.find(id)
      
        puts item
        if item.bringing.length == item.quantity
           return true
        end
    end

end
