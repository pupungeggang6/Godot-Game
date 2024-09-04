extends Node

var a = [1, 2, 4]

func save_init():
    var save = FileAccess.open('user://save.txt', FileAccess.READ)
    
    if save:
        print(save.get_as_text())
        var b = JSON.parse_string(save.get_as_text())
        print(b[1])

    else:
        var temp_file = FileAccess.open('user://save.txt', FileAccess.WRITE)
        temp_file.store_string(str(a))
        temp_file.close()
        
        save = FileAccess.open('user://save.txt', FileAccess.READ)
        print(save.get_as_text())
        var b = save.get_as_text()
    
    save.close()
    
func erase_data():
    var save = FileAccess.open('user://save.txt', FileAccess.WRITE)
    save.store_string(str(a))
    save.close()
