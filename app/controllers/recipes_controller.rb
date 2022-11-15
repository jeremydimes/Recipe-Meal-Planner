class RecipesController < ApplicationController
  def Search
    response = HTTP.get("https://api.spoonacular.com/recipes/findByIngredients?q=bitcoin&apiKey=#{Rails.application.credentials.news_api_key}")
    data = response.parse
    recipes = data["recipes"]
    render json: recipes[0..2]
  end
end
