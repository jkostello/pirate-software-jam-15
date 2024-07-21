extends Node2D
class_name RitualCircle

@export var identifier := ""

var base_ingredient : PackedScene = preload("res://Ingredients/base_ingredient.tscn")
var ingredients := {}

# Trigger this when dust is sprinkled
# This should lock the ingredients, play an animation, clear everything, then make the item
func complete_ritual(dust_id : String):
	var points := $IngredientPoints.get_children()
	
	if ingredients.has(points[0]):
		ingredients[points[0]]
	
	match identifier:
		"Bigram":
			pass
		"Pentagram":
			pass
		_:
			print("identifier not recognized:  ", identifier)
	
	clear_circle()
	
	var output := base_ingredient.instantiate() # Only for testing, needs to be customized
	
	get_parent().add_child(output)
	output.current_point = $IngredientPoints/IngredientPoint1


func clear_circle():
	for i in ingredients:
		ingredients[i].fail_placement()
	ingredients.clear()
