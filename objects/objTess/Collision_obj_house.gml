// Evento de Colisión con Objeto Interactivo
if (place_meeting(64, 32, obj_house)) {
    // Mostrar el cuadro de diálogo
    instance_create_layer(64, 32 - sprite_height, "Instances_1", obj_dialog_box);

    
    // Capturar la entrada del jugador
    // Usa el código de tecla que desees (por ejemplo, vk_space para la tecla Espacio)
    if (keyboard_check_pressed(vk_space)) {
        // Realiza la acción de interacción
        // Cambia de vista, realiza alguna acción, etc.
        // Ejemplo: room_goto_next(); (cambia a la siguiente vista)
    }
}
