extends Sprite2D

@export var speed = 200.0

func _ready():
    pass
    
func _process(delta):
    handle_input()
    
    if Var.menu == false:
        if Var.state == '':
            move_player(delta)
    
func handle_input():
    if Var.menu == false:
        if Var.state == '':
            if Input.is_action_just_released('mouse_left'):
                var mouse = get_viewport().get_mouse_position()
                print(mouse)
                Var.player['moving'] = true
                Var.player['destination'].x = Var.camera.x + mouse.x
                Var.player['destination'].y = Var.camera.y + mouse.y

func move_player(delta):
    var temp_position = Vector2(Var.player['position'].x, Var.player['position'].y)
    var diff = Var.player['destination'] - temp_position
    var diff_normalized = diff.normalized()
    
    if diff.length() > 10:
        temp_position.x += diff_normalized.x * speed * delta
        temp_position.y += diff_normalized.y * speed * delta
        
        Var.player['position'].x = temp_position.x
        Var.player['position'].y = temp_position.y
        
    else:
        Var.player['moving'] = false
        
    position.x = Var.player['position'].x
    position.y = Var.player['position'].y
    
    Var.camera.x = Var.player['position'].x - 640
    
    if Var.camera.x < 0:
        Var.camera.x = 0
    elif Var.camera.x > 1280:
        Var.camera.x = 1280
        
    Var.camera.y = Var.player['position'].y - 280
        
    if Var.camera.y < 0:
        Var.camera.y = 0
    elif Var.camera.y > 2000:
        Var.camera.y = 2000
        
