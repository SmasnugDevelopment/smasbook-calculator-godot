extends Label

@onready var word: String = "SMASBOOK"

func set_word():
	if Global.pro:
		word += " PRO"
	if Global.plus:
		word += " PLUS"
	if Global.max:
		word += " MAX"
	if Global.ultra:
		word += " ULTRA"
	if Global.touch:
		word += " TOUCH"
	text = word
