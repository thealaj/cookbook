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
	def print_cookbook
		puts "Recipes"
		@recipes.each do |recipe| 
			puts "Title: "
			puts recipe.title 
			puts "Ingredients: "
			puts recipe.ingredients.join(", ") 
			puts "Steps: "
			recipe.steps.each_with_index { |step, index| puts "#{index + 1}.) #{step}" }
		end
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
	def print_recipe
		puts "Title: #{@title}" 
		puts "Ingredients: #{@ingredients.join(", ")}"
		steps.each_with_index{ |step, index| puts "#{index + 1}.) #{@steps}" }

	end

end
