class_name Tauler extends TextureRect
# el tauler. amb les fitxes i les comprovacions de 4 en ratlla

# constants
const NUM_COL = 8
const NUM_FIL = 7
const OFFSET_INI = Vector2(64,62)
const DELTA_X = 92 #pixels
const DELTA_Y = 89 #pixels

# atributs
var _grid:Array = [] # matriu de caracters
var _primeraFilaBuida:Array = [] # vector de int
@onready var _cl:= $CanvasLayer
@onready var _fitxaOrd:= $FitxaOrd
@onready var _fitxaHuma:= $FitxaHuma

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(NUM_FIL):
		_grid.append([])
		for j in range(NUM_COL):
			_grid[i].append(' ')
	for j in range(NUM_COL):
		_primeraFilaBuida.append(NUM_FIL-1)
	
	# tira, si pot, una fixa de qui a la columna col
	tira_fitxa("huma",0)
	tira_fitxa("huma",3)
	tira_fitxa("huma",2)
	pass # Replace with function body.



func tira_fitxa(qui:String, col:int):
	if _primeraFilaBuida[col] < 0:
		print("tirada impossible")
	else: 
		var fitxa:Sprite2D
		if qui == "huma":
			fitxa = _fitxaHuma.duplicate()
		else:
			fitxa = _fitxaOrd.duplicate()
		var fila = _primeraFilaBuida[col]
		_primeraFilaBuida[col] -= 1
		var p:= Vector2(OFFSET_INI + Vector2(col*DELTA_X, fila*DELTA_Y))
		fitxa.position = p
		_cl.add_child(fitxa)	
	pass
