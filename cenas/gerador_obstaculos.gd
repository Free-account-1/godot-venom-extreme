extends Node2D

@export var obstaculo = preload("res://cenas/Obstaculo.tscn")

var timer = 0.0

func _process(delta: float) -> void:
	timer += delta
	if timer > 2:
		var bloco = obstaculo.instantiate();
		add_child(bloco);
		bloco.position.x = 1000
		bloco.position.y = 511
		timer = 0
