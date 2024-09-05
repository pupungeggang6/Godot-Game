extends Sprite2D

@export var speed = 200.0
var destination = Vector2(0, 0)
var moving = false

func _ready():
    pass
    
func _process(delta):
    handle_input()
    move_player(delta)
    
func handle_input():
    if Var.menu == false:
        if Var.state == '':
            if Input.is_action_just_released('mouse_right'):
                var mouse = get_viewport().get_mouse_position()
                moving = true
                destination.x = mouse.x
                destination.y = mouse.y

func move_player(delta):
    pass
