extends Node2D

var position_start = Vector2(400, 0)
var path = [Vector2(400, 0), Vector2(400, 400), Vector2(0, 400), Vector2(400, 400)]
var path_next = 1
var speed = 200.0

func _ready() -> void:
    position = position_start

func _process(delta: float) -> void:
    handle_platform(delta)
    
func handle_platform(delta):
    if len(path) > 0:
        var diff = Vector2(path[path_next].x - position.x, path[path_next].y - position.y)
        if diff.length() > 10:
            position.x += diff.normalized().x * speed * delta
            position.y += diff.normalized().y * speed * delta
        else:
            path_next = (path_next + 1) % len(path)
