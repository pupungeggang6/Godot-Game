extends Node2D

func _ready():
    FuncSave.save_init()

func _process(delta):
    handle_input()
    
func handle_input():
    if Var.menu == false:
        if Var.state == '':
            if Input.is_action_just_pressed('key_debug'):
                var temp_scene = load('res://Scene/game.tscn').instantiate()
                queue_free()
                get_tree().root.add_child(temp_scene)

            if Input.is_action_just_pressed('key_erase'):
                FuncSave.erase_data()
