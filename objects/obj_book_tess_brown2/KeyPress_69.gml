// En el evento Key Press (E)

// Obtiene la distancia entre el objeto y el jugador
var distancia_2 = point_distance(x, y, objTess.x, objTess.y);

if (distancia_2 <= distancia_umbral_2) {
if (keyboard_check_pressed(ord("E"))) {
    // Cambiar entre 3 y 6
    if (indice_actual_2 == 4) {
        indice_actual_2 = 6;
		global.book_tess_brown2=1;
    } else {
        indice_actual_2 = 4;
		global.book_tess_brown2=0;
    }
}

}
