extends Node2D
var final = 0
var n = 0
var entrada = 100000000
var inicio
func _ready():
	inicio = OS.get_unix_time()
	for i in range (0,entrada):
		n=1
	for j in range (0,entrada):
		n=1
	for k in range (0,entrada):
		n=1
	final = OS.get_unix_time()
	var segundos_gastos=final - inicio
	print ("Você gastou: ",segundos_gastos,"segundos")
	
	#calculadora 2 entradas 4 função, resultado, historico de operação, lista
