extends ColorRect

var slot_ID := -1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame. 
@warning_ignore("unused_parameter")
func _process(delta:float)-> void:
	pass


func set_background(c) -> void:
	color = c
