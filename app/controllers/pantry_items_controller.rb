class PantryItemsController < ApplicationController
  def index
    @pantry_items = current_user.pantry_items
    render template: "pantry_items/index"
  end

  def create
    @pantry_item = current_user.pantry_items.find_by(ingredient_id: params[:ingredient_id])
    if !@pantry_item
      @pantry_item = PantryItem.create(
        ingredient_id: params[:ingredient_id],
        user_id: current_user.id,
      )
      render template: "pantry_items/show"
    else
      render json: { message: "already exists" }, status: 422
    end
  end
end
