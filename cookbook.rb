Cookbook = Class.new
class Cookbook
	attr_accessor :title
	attr_accessor :recipes
	def initialize(title)
		@title = title
		@recipes = []
	end
	def add_recipe(recipe)
		@recipes.push(recipe)
        puts "Added recipe to the collection: #{recipe.title}"
	end
	def recipe_titles
		@recipes.each { |x| puts x.title }
	end
 	def recipe_ingredients 
		@recipes.each { |x| puts "These are the ingredients for the #{x.title}: #{x.ingredients}" }
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
