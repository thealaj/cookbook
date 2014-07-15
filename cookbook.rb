Cookbook = Class.new
class Cookbook
	attr_accessor :title
	attr_reader :recipes
	def initialize(title)
		@title = title
		@recipes = []
	end
	def add_recipe(recipe)
		@recipes.push(recipe)
end
	
end

Recipe = Class.new
class Recipe
	attr_accessor :title
	attr_accessor :steps
	attr_accessor :ingredients
	
	def initialize (title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end
end
