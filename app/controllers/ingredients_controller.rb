class IngredientsController < ApplicationController
  def index
    ingredients = Ingredient.all
    render json: ingredients.as_json
  end

  def create
    ingredient = Ingredient.new(

      name: params[:name],
      image_url: params[:image_url],
    )
    if ingredient.save
      render json: ingredient
    else
      render json: { errors: ingredient.errors.full_messages }, status: :bad_request
    end
  end
end
