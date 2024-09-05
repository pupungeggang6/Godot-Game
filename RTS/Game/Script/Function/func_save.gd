extends Node

var empty_save = {
    'progress' : [],
}

func save_init():
    var save = FileAccess.open('user://save.txt', FileAccess.READ)
    
    if save:
        Var.save = JSON.parse_string(save.get_as_text())

    else:
        var temp_file = FileAccess.open('user://save.txt', FileAccess.WRITE)
        temp_file.store_string(str(empty_save))
        temp_file.close()
        
        save = FileAccess.open('user://save.txt', FileAccess.READ)
        Var.save = JSON.parse_string(save.get_as_text())
    
    save.close()
    
func erase_data():
    var save = FileAccess.open('user://save.txt', FileAccess.WRITE)
    save.store_string(str(empty_save))
    save.close()
