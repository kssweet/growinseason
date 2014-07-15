module CommunitySharesHelper
    class Recipe

    @@url_base = "http://api.yummly.com/v1/api/recipes?_app_id=ab7a6205&_app_key="
    @@client_id = Rails.application.secrets.yumly_top_id
    @@search = "&q=#{(params[:foodsearch])}"
    @@recipe_url = "http://www.yummly.com/recipe/"

    # also will need something that tacks onto end of @@recipe_url using the :url from meals array

    

    def self.retrieve_recipes
      Recipe.build_recipes_hash
    end

    def self.recipes
      recipes = HTTParty.get(@@url_base + @@client_id + @@search)
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
