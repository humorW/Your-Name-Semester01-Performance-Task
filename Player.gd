extends Sprite2D

@export var Speed = 400

@onready var bg_music = $"../bg_music"
@onready var enemy_hit = $"../enemy_hit"


func _ready():
	bg_music.play()

func _process(delta):
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * Speed
	position += velocity * delta
	
	


func _on_child_exiting_tree(node):
	hide()

