extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func run(obj):
	var complete = true
	for k in get_tree().get_nodes_in_group("zones"):
		if k.complete == false:
			complete = false
			break
	if complete:
		print("all done")
		for k in get_tree().get_nodes_in_group("zones"):
			k.align_to_grid()
		return "next"
#	else:
#		var count = 0
#		var states = []
#		for k in get_tree().get_nodes_in_group("zones"):
#			if k.complete == false:
#				count += 1
#				states.push_back(k.state)
#		if states.size() < 20:
#			print(OS.get_datetime(), " ", count, " ", states)
				
