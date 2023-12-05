// En el evento Key Press (E)

// Obtiene la distancia entre el objeto y el jugador
var distancia_3 = point_distance(x, y, objTess.x, objTess.y);

if (distancia_3 <= distancia_umbral_3) {
if (keyboard_check_pressed(ord("E"))) {
    // Cambiar entre 3 y 6
    if (indice_actual_3 == 0) {
        indice_actual_3 = 6;
		global.book_tess_brown3=1;
    } else {
        indice_actual_3 = 0;
		global.book_tess_brown3=0;
    }
}

}
