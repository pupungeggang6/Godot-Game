extends Node2D

var level = [
    {'type' : 'wall', 'rect' : [160, 480, 160, 80]}
]
@export var a = 2

func _ready() -> void:
    generate_level()
    
func generate_level():
    for i in range(len(level)):
        if level[i]['type'] == 'wall':
            var temp_node = load('res://Scene/Thing/wall.tscn').instantiate()
            var temp_node_collision = temp_node.get_node('StaticBody2D/CollisionShape2D')
            var temp_node_sprite_rect = temp_node.get_node('StaticBody2D/Sprite2D')
            temp_node.position = Vector2(level[i]['rect'][0], level[i]['rect'][1])
            temp_node_collision.shape.size = Vector2(level[i]['rect'][2], level[i]['rect'][3])
            temp_node_sprite_rect.texture.width = level[i]['rect'][2]
            temp_node_sprite_rect.texture.height = level[i]['rect'][3]
            add_child(temp_node)
    
func _process(delta: float) -> void:
    pass
