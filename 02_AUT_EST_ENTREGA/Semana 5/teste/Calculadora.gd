extends Control
#export (NodePath) var Entrada1
#export (NodePath) var Entrada2
#export (NodePath) var Resultado
var igual = 0
var calculo = ""
var entrada1 = null
var entrada2 = null
onready var resultado = $Igual

#func _ready():
	#resultado = get_node(Resultado)
	#entrada1 = get_node(Entrada1)
	#entrada2 = get_node(Entrada2)
	
func _on_0_button_up():
	resultado.set_text(resultado.get_text() + "0")


func _on_1_button_up():
	resultado.set_text(resultado.get_text() + "1")


func _on_2_button_up():
	resultado.set_text(resultado.get_text() + "2")


func _on_3_button_up():
	resultado.set_text(resultado.get_text() + "3")


func _on_4_button_up():
	resultado.set_text(resultado.get_text() + "4")


func _on_5_button_up():
	resultado.set_text(resultado.get_text() + "5")


func _on_6_button_up():
	resultado.set_text(resultado.get_text() + "6")


func _on_7_button_up():
	resultado.set_text(resultado.get_text() + "7")


func _on_8_button_up():
	resultado.set_text(resultado.get_text() + "8")


func _on_9_button_up():
	resultado.set_text(resultado.get_text() + "9")


func _on__button_up():
	calculo = "adição"
	if entrada1 == null:
		entrada1 = float(resultado.get_text())
		resultado.set_text("")
	else:
		entrada2 = float(resultado.get_text())
		terminar_calculo(calculo)


func _on_10_button_up():
	calculo = "subtrair"
	if entrada1 == null:
		entrada1 = float(resultado.get_text())
		resultado.set_text("")
	else:
		entrada2 = float(resultado.get_text())
		terminar_calculo(calculo)


func _on_x_button_up():
	calculo = "multiplicar"
	if entrada1 == null:
		entrada1 = float(resultado.get_text())
		resultado.set_text("")
	else:
		entrada2 = float(resultado.get_text())
		terminar_calculo(calculo)


func _on_divide_button_up():
	calculo = "dividir"
	if entrada1 == null:
		entrada1 = float(resultado.get_text())
		resultado.set_text("")
	else:
		entrada2 = float(resultado.get_text())
		terminar_calculo(calculo)


func _on_H_button_up():
	pass # Replace with function body.


func _on_Corrigir_button_up():
	var text = []
	for i in resultado.get_text():
		text.append(i)
	text.remove(text.size() - 1)
	resultado.set_text("")
	for i in text:
		resultado.set_text(resultado.get_text() + i)
	
func terminar_calculo(op):
	if entrada2 == null:
		entrada2 = float(resultado.get_text())
	if entrada1 != null:
		match op:
			"dividir":
				igual = entrada1 / entrada2
				resultado.set_text(str(igual))
			"multiplicar":
				igual = entrada1 * entrada2
				resultado.set_text(str(igual))
			"subtrair":
				igual = entrada1 - entrada2
				resultado.set_text(str(igual))
			"adição":
				igual = entrada1 + entrada2
				resultado.set_text(str(igual))
	entrada1 = null
	entrada2 = null



func _on_igual_button_up():
		terminar_calculo(calculo)


func _on_Button_button_up():
	entrada1 = null
	entrada2 = null
	resultado.set_text("")
