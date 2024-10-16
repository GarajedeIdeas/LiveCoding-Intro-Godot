extends Area2D

@onready var bubble: Sprite2D = $Bubble


func _on_body_entered(body: Node2D) -> void:
	bubble.show()


func _on_body_exited(body: Node2D) -> void:
	bubble.hide()
