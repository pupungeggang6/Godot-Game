extends Camera3D

var angle = 0

func _ready() -> void:
    position = Vector3(0, 0, 2)

func _process(delta: float) -> void:
    angle += delta
    position = Vector3(2 * sin(angle), 0, 2 * cos(angle))
    look_at_from_position(position, Vector3(0, 0, 0), Vector3(0, 1, 0))
