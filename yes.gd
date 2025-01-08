extends Button

@export var ref: Control
@export var x: int
@export var y: int
@export var type: String
@export var button: bool

func _on_pressed() -> void:
	print(button)
	find_type()
	get_tree().call_group("cam", "move", x, y, ref)

func find_type():
	if type == "PRO" and button:
		Global.pro = true
	if type == "PLUS" and button:
		Global.plus = true
	if type == "MAX" and button:
		Global.max = true
	if type == "ULTRA" and button:
		Global.ultra = true
	if type == "TOUCH":
		if button:
			Global.touch = true
		get_tree().call_group("label", "set_word")
