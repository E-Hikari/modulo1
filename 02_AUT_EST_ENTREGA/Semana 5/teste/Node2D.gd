extends Node2D
var a = false
var b = false
var c = true
var d = true
var numero

func _ready():
	if a and !b:
		if !!c && !d:
			if d && (a or c):
				if !d and b:
					numero = 1
				else:
					numero = 2
			else:
				numero = 3
		else: 
			numero = 4
	else: 
		numero = 5
	print (numero)
