extends Node2D

func _ready() -> void:
    pass

func _process(delta: float) -> void:
    if Input.is_action_just_pressed("ui_down"):
        var temp_scene = load("res://Scene/game.tscn").instantiate()
        queue_free()
        get_tree().root.add_child(temp_scene)
