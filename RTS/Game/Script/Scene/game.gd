extends Node

func _ready():
    pass

func _process(delta):
    handle_input()
    
func handle_input():
    if Var.menu == false:
        if Input.is_action_just_pressed('key_esc'):
                Var.menu = true
                get_node('UI/Menu').visible = true
                
        if Var.state == '':
            true
                
    elif Var.menu == true:
        if Input.is_action_just_pressed('key_esc'):
            Var.menu = false
            get_node('UI/Menu').visible = false
            
        if Input.is_action_just_pressed('key_resume'):
            Var.menu = false
            
        if Input.is_action_just_pressed('key_option'):
            Var.option = true
            
        if Input.is_action_just_pressed('key_exit'):
            Var.menu = true
            var temp_scene = load('res://Scene/title.tscn').instantiate()
            queue_free()
            get_tree().root.add_child(temp_scene)
