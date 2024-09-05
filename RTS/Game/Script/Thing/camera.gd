extends Camera2D

func _ready():
    pass

func _process(delta):
    position.x = Var.camera.x
    position.y = Var.camera.y
