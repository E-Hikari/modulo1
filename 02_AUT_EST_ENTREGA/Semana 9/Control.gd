extends Control
var array = []
#não serve mas foi outra tentativa
class MyCustomSorter:
	static func sort(a,b):
		if a[0] <b [0]:
			return true
			return false

func organizador(array):
	for a in range(1, len(array)):
		var b = a - 1
		var ascendente = array[a]
		while b >=0 and array [b] > ascendente:
			array [b + 1] = array[b]
			b -= 1
		array [b + 1] = ascendente

func _on_adicionar_button_up():
	array.append(int($LineEdit.text))
	$LineEdit.text = ""

func _on_organizar_button_up():
	organizador(array)
	$Label2.text = str(array)
#outras falhas
#func _ready():
#	var arr = ["",11,1,"",4]
#	arr.sort_custom(self, "customComparison")
#	print (arr)


#func customComparison(a, b):
#	if typeof(a) != typeof(b):
#		return typeof(a) < typeof(b)
#	else:
#		return a < b
#		
#const TypeOrder = [TYPE_STRING, TYPE_INT]

#func customComparison2(a, b):
#	if typeof(a) != typeof(b):
#		if typeof(a) in TypeOrder and typeof(b) in TypeOrder:
#			return TypeOrder.find( typeof(a) ) < TypeOrder.find( typeof(b) )
#		else:
#			return typeof(a) < typeof(b)
#	else:
#		return a < b
