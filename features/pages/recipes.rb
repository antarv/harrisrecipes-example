require_relative 'base_page'

class Recipes < BasePage
  page_url BASE_URL + '/recipes'

  link(:goto_login, class:'btn btn-default btn-success')
  link(:add_recipe, text:'Add Recipe')
  text_field(:recipe_name, id:'recipe_name')
  text_area(:recipe_ingredients, id:'recipe_summary')
  text_area(:recipe_instructions, id:'recipe_description')
  checkbox(:check_side_dish, id:'recipe_style_ids_6')
  button(:submit, name:'commit')

  def login #wow this is a bad definition name
    #a visible? command of some sort should be here
    goto_login
  end

  def add_one_recipe(recipe_name="Buttered Corn", ingredients="butter, corn", instructions="butter the corn")
    add_recipe
    self.recipe_name = recipe_name
    self.recipe_ingredients = ingredients
    self.recipe_instructions = instructions
    check_side_dish_element.click
    submit
  end





end