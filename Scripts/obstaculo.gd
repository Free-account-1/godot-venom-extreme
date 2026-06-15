extends Area2D

var velocidade

func _ready() -> void:
	velocidade = 400

func _process(delta: float) -> void:
	position.x -= velocidade*delta*0.5
