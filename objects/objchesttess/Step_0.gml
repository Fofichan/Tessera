if (keyboard_check_pressed(vk_enter)) {
    if (string_pos("adi", keyboard_string) > 0) {
		audio_play_sound(sndExito, 10, false);
        room_goto(rm_chest_reward_tess);
        show_debug_message("El mensaje contiene 'ADI'.");
    } else {
        // La palabra "12" no se encuentra en el mensaje
        show_debug_message("El mensaje NO contiene 'ADI'.");
		count2a++;
		audio_play_sound(sndMalo, 10, false);
		if (count > 10) {global.hint2a=1;};
			keyboard_string = "";
			message = "";
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
