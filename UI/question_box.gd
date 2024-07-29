extends Control

var behavior_symptom = ''
var pain_symptom = ''
var sense_symptom = ''

func _ready():
	Autoload.customer_info.connect(get_customer_info)

# Called when customer enters scene
func get_customer_info(behavior, pain, sense):
	behavior_symptom = behavior
	pain_symptom = pain
	sense_symptom = sense

func _on_behavior_question_pressed():
	if behavior_symptom:
		print(behavior_symptom)
	else:
		print("No behavior symptom")
	
func _on_pain_question_pressed():
	if pain_symptom:
		print(pain_symptom)
	else:
		print("No pain symptom")
	
func _on_senses_question_pressed():
	if sense_symptom:
		print(sense_symptom)
	else:
		print("No sense symptom")