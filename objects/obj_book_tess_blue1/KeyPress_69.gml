// En el evento Key Press (E)

// Obtiene la distancia entre el objeto y el jugador
var distancia_1 = point_distance(x, y, objTess.x, objTess.y);

if (distancia_1 <= distancia_umbral_blue_1) {
if (keyboard_check_pressed(ord("E"))) {
    // Cambiar entre 3 y 6
    if (indice_actual_blue_1 == 23) {
        indice_actual_blue_1 = 27;
		global.book_tess_blue1 = 1;
    } else {
        indice_actual_blue_1 = 23;
		global.book_tess_blue1 = 0;
    }
}



}
