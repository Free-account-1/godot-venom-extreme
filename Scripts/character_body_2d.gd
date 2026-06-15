extends CharacterBody2D

var velocidade_pulo = -600
func _physics_process(delta: float) -> void:
	velocity += get_gravity() * delta 
	if is_on_floor():
		$corpo.play("andar")
		if Input.is_action_pressed("ui_select"):
			velocity.y = velocidade_pulo
	else: 
		$corpo.play("pular")
	move_and_slide() 
