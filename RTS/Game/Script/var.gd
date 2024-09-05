extends Node

var save = {}
var state = ''
var menu = false
var option = false

var player = {
    'position' : Vector2(1280, 1280),
    'destination' : Vector2(0, 0),
    'moving' : false,
    
    'deck' : [],
    'hand' : [null, null, null, null, null],
}

var camera = Vector2(0, 0)
