// En el evento Key Press (E)

// Obtiene la distancia entre el objeto y el jugador
var distancia_1 = point_distance(x, y, objTess.x, objTess.y);

if (distancia_1 <= distancia_umbral_white_2) {
if (keyboard_check_pressed(ord("E"))) {
    // Cambiar entre 3 y 6
    if (indice_actual_white_2 == 29) {
        indice_actual_white_2 = 6;
		global.book_tess_white2=1;
    } else {
        indice_actual_white_2 = 29;
		global.book_tess_white2=0;
    }
}



}
