extends Control

func _ready():
	var arr = ["",11,1,"",4]
	arr.sort_custom(self, "customComparison")
	print (arr)


func customComparison(a, b):
	if typeof(a) != typeof(b):
		return typeof(a) < typeof(b)
	else:
		return a < b
		
const TypeOrder = [TYPE_STRING, TYPE_INT]

func customComparison2(a, b):
	if typeof(a) != typeof(b):
		if typeof(a) in TypeOrder and typeof(b) in TypeOrder:
			return TypeOrder.find( typeof(a) ) < TypeOrder.find( typeof(b) )
		else:
			return typeof(a) < typeof(b)
	else:
		return a < b
