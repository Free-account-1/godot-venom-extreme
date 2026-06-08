extends Node2D

@export var velocidade: int

func _ready() -> void:
	velocidade = 400

func _process(delta: float) -> void:
	$Fundo.position.x   -= velocidade*delta*0.05
	$Fundo2.position.x  -= velocidade*delta*0.05
	$Chao.position.x    -= velocidade*delta*2
	$Chao2.position.x   -= velocidade*delta*2
	$"Meio azul".position.x -= velocidade*delta*0.15
	$"meio azul 2".position.x -= velocidade*delta*0.15
	$"meio preto".position.x -= velocidade*delta*0.25
	$"meio preto2".position.x -= velocidade*delta*0.25
	
	if $Fundo.position.x < -1152:
		$Fundo.position.x = 1152
	if $Fundo2.position.x < -1152:
		$Fundo2.position.x = 1152
	if $"Meio azul".position.x < -1152:
		$"Meio azul".position.x = 1152
	if $"meio azul 2".position.x < -1152:
		$"meio azul 2".position.x = 1152

	$Chao.position.x -= velocidade*delta
	$Chao2.position.x -= velocidade*delta
	if $Chao.position.x < -1152:
		$Chao.position.x = 1152
	if $Chao2.position.x < -1152:
		$Chao2.position.x = 1152
