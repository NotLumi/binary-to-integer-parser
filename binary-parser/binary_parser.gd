extends Control

@onready var conversion: Label = %Conversion

func _on_input_binary_text_changed(text: String) -> void:
	convert_int_to_binary(text)
	
var intSum : int

func _process(delta: float) -> void:
	conversion.text = str(intSum)




func convert_int_to_binary(rawString):
	var intArray : Array
	var binaryArray : Array
	var intValue = 0 
	var exponent = 0
	
	
	for i in rawString.length():
		intArray.append(rawString[i])
	
	intArray.reverse()

	for o in intArray:
		o = int(o)
		var binaryValue = (2 ** exponent)
		match o:
			0:
				binaryArray.append(0)
			1:
				binaryArray.append(binaryValue)
		exponent += 1
		
	intSum = 0
	
	for n in binaryArray:
		intSum += n
		
	print("Binary Array: " + str(binaryArray))
