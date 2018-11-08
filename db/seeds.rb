require 'json'
require 'open-uri'

p 'starting'

serialized_cocktails = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
cocktails = JSON.parse(serialized_cocktails)
cocktails['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

p 'finished'
