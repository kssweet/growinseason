module CommunitySharesHelper
    class Recipe

    @@url_base = "http://api.yummly.com/v1/api/recipes?_app_id=ab7a6205&_app_key="
    @@search_id = Rails.application.secrets.yumly_search_id
    @@recipe_url = "http://www.yummly.com/recipe/"

    # also will need something that tacks onto end of @@recipe_url using the :url from meals array
    @@food_search = "&q=onions"


    

    def self.retrieve_recipes
      Recipe.build_recipes_hash
    end

    def self.recipes
      recipes = HTTParty.get(@@url_base + @@search_id + @@food_search)
      recipes = recipes["matches"]
    end

    def self.build_recipes_hash
      meals = {}

      Recipe.recipes.each do |food|
        if meals[0].nil?
          meals[0]=[]
        end
        meals[0].push({
          :recipeName   => food["recipeName"],
          :ingredients  => food["ingredients"],
          :url          => food["id"]
          })
      end

      meals = meals[0]

      return meals
    end
  end

end
