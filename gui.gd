extends Control

#Preload the "slot.tscn" scene and store it in the `slot_scene` variable once the node is ready
@onready var slot_scene = preload("res://slot.tscn")
@onready var board_grid = $Chessboard/Boardgrid
@onready var piece_scene = preload("res://Piece.tscn")
@onready var chess_board = $Chessboard
@onready var DataHandler = preload("res://DataHandler.gd")

#This declares the grid_array and piece_array so they can be used
var grid_array := []
var piece_array := []

# Function ready basically called when the scene is loaded, this means that when the scene starts it calls for the function create_slots
func _ready():
	for i in range(64):
		create_slots()
		
	var colorbit = 0
	for i in range(8):
		for j in range(8):
			if j%2 == colorbit:
				grid_array[i*8+j].set_background(Color.LIGHT_BLUE)
		if colorbit == 0:
			colorbit = 1
			
		else: 
			colorbit = 0
			
	piece_array.resize(64)
	piece_array.fill(0)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta:float) -> void:
	pass

#This is the function for creating the tiles in the chessboard, 
#it instantiates the slot scene saved before 
#and adds a slot and moves on to the next tile to add another one
func create_slots():
	var new_slot = slot_scene.instantiate()
	new_slot.slot_ID = grid_array.size()
	board_grid.add_child(new_slot)
	grid_array.push_back(new_slot)

#This is the function for spawning(?) the pieces on the board
#It does the same thing and instantiatees the piece scene saved before
func add_piece(location) -> void:
	var new_piece = piece_scene.instantiate()
	chess_board.add_child(new_piece)
	new_piece.global_position = grid_array[location].global_position
	piece_array[location] = new_piece
	new_piece.slot_ID = location

func _on_button_pressed() -> void:
	add_piece(1)
