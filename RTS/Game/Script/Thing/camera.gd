extends Camera2D

@onready var node_player = get_parent().get_node('Player')

func _ready():
    pass

func _process(delta):
    position.x = node_player.position.x
    position.y = node_player.position.y
