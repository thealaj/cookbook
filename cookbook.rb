Cookbook = Class.new
class Cookbook
	def initialize(title)
		@title = title
	end
	def title
		@title 
	end
	def title=(new_title)
		@title = new_title
	end
end

Recipe = Class.new
class Recipe
	attr_reader :title
	attr_writer :steps
	attr_accessor :ingredients
	
	def initialize (title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end
	def title
		@title
	end
	def title=(new_title)
		@title = new_title 
	end
	def ingredients
		@ingredients
	end
	def ingredients=(new_ingredients)
		@ingredients = new_ingredients
	end
	def steps
		@steps
	end
	def steps=(new_steps)
		@steps = new_steps
	end
		

end
