extends Area2D

export(String, FILE, "*.tscn") var cenas

func _on_Passing_body_entered(body):
	pass # Replace with function body.
	print("entrou")
	get_tree().change_scene(cenas)


func _on_Passing_body_exited(body):
	pass # Replace with function body.
	print("saiu")
