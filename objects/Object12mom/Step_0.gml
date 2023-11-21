if (keyboard_check_pressed(vk_enter)) {
    if (string_pos("36", keyboard_string) > 0) {
        room_goto(rm_view_open_door_mom);
        show_debug_message("El mensaje contiene '12'.");
    } else {
        // La palabra "12" no se encuentra en el mensaje
        show_debug_message("El mensaje NO contiene '12'.");
    }
} else {
    if (string_length(keyboard_string) < limit) {
        message = keyboard_string;
        show_debug_message("Mensaje actualizado a: " + message);
    } else {
        // El mensaje excede el límite, reiniciar el mensaje
        keyboard_string = message;
        show_debug_message("keyboard_string reseteado a: " + keyboard_string);
    }
}

if(keyboard_check_pressed(vk_delete)){
	keyboard_string = ""
	message = ""
}