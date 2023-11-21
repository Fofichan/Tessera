if (string_length(keyboard_string) < limit) {
    message = keyboard_string;
    show_debug_message("Mensaje actualizado a: " + message);
} else {
    keyboard_string = message;
    show_debug_message("keyboard_string reseteado a: " + keyboard_string);
}

// Verifica si el mensaje contiene la palabra "hola"
if (string_pos("39", message) > 0) {
    room_goto(WIN);
    show_debug_message("El mensaje contiene '12'.");
} else {
    // La palabra "12" no se encuentra en el mensaje
    show_debug_message("El mensaje NO contiene '12'.");
}
