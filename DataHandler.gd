extends Node

var assets := []
enum PieceNames {WHITE_PAWN, WHITE_KING, WHITE_QUEEN, WHITE_BISHOP, WHITE_ROOK, WHITE_MONKEY, BLACK_PAWN, BLACK_KING, BLACK_QUEEN, BLACK_BISHOP, BLACK_ROOK, BLACK_MONKEY}



#This adds all the corresponding sprites as an asset
func _ready() -> void:
	assets.append("res://Computer Stuff/White_pawn.png")
	assets.append("res://Computer Stuff/White_king.png")
	assets.append("res://Computer Stuff/White_queen.png")
	assets.append("res://Computer Stuff/White_bishop.png")
	assets.append("res://Computer Stuff/White_monkey.png")
	assets.append("res://Computer Stuff/Black_pawn.png")
	assets.append("res://Computer Stuff/Black_bishop.png")
	assets.append("res://Computer Stuff/White_rook.png")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta:float) -> void:
	pass
