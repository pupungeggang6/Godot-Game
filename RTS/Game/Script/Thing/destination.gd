extends Sprite2D

@onready var node_player = get_parent().get_node('Player')

func _ready():
    pass
    
func _process(delta):
    if node_player.moving == true:
        visible = true
        position.x = node_player.destination.x
        position.y = node_player.destination.y
        
    else:
        visible = false
