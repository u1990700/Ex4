extends TextureRect

#constants

const col = 8
const fil = 7

#atributs
var offset = 40
var arrayFil = []
var arrayCol = []

# Called when the node enters the scene tree for the first time.
func _ready():
	arrayCol.resize(col)
	arrayCol.fill(" ")
	arrayFil.resize(fil)
	arrayFil.fill(fil)
	
	tira_fitxa()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func tira_fitxa():
	var nova_fitx = $FitxaOrd
	nova_fitx.position = Vector2(65,58)
	pass
