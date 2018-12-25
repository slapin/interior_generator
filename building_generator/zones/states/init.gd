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
	var ok = true
	if obj.ov.size() > 0:
		for h in obj.ov:
			if h != obj.outside_walls:
				ok = false
		if ok:
			return "grow_uniform"
		else:
			obj.queue_free()

