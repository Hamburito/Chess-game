extends Node2D

@onready var DataHandler = preload("res://DataHandler.gd")
@onready var icon_path = $Icon
var slot_ID := -1
var type : int


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func load_icon(piece_name) -> void:
	icon_path.texture = load(DataHandler.assets[piece_name])
