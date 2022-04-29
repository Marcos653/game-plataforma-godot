extends Area2D

export var fruits = 1

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_items_body_entered(body):
	$anim.play("collected")
	Global.fruits += fruits
	print(Global.fruits)


func _on_anim_animation_finished(anim_name):
	if anim_name == "collected":
		queue_free()
