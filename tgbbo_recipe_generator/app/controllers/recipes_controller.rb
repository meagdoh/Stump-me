class RecipesController < ApplicationController
	def new
		@baker = Baker.find(params[:baker_id])
		@recipe = Recipe.new
	end
	def show
		@baker = Baker.find(params[:baker_id])
		@recipe = Recipe.find(params[:id])
	end
	def create
		@baker = Baker.find(params[:baker_id])
		@recipe = @baker.recipes.create(recipe_params)
		redirect_to baker_recipe_path(@baker, @recipe)
	end
	def edit
		@baker = Baker.find(params[:baker_id])
		@recipe = Recipe.find(params[:id])

	end
	def update
		@baker = Baker.find(params[:baker_id])
		@recipe = Recipe.find(params[:id])
		@baker.recipes.update(recipe_params)
		redirect_to baker_recipe_path(@recipe)
	end
	def destroy
		@baker = Baker.find(params[:baker_id])
		@recipe = Recipe.find(params[:id])
		@recipe.destroy
		redirect_to baker_path(@baker)
	end

private
def recipe_params
  params.require(:recipe).permit(:name, :ingredients, :instructions)
end
end