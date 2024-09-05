extends Sprite2D

@onready var node_player = get_parent().get_node('Player')

func _ready():
    pass
    
func _process(delta):
    if Var.player['moving'] == true:
        visible = true
        position.x = Var.player['destination'].x
        position.y = Var.player['destination'].y
        
    else:
        visible = false
