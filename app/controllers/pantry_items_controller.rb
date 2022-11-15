class PantryItemsController < ApplicationController
  def index
    pantryitems = current_user.pantry_items
    render json: pantryitems.as_json
  end

  def create
    pantry_item = current_user.pantry_items.find_by(ingredient_id: params[:ingredient_id])
    if !pantry_item
      pantry_item = PantryItem.create(
        ingredient_id: params[:ingredient_id],
        user_id: current_user.id,
      )
      render json: pantry_item.as_json
    else
      render json: { message: "already exists" }, status: 422
    end
  end
end
