// En el evento Key Press (E)

// Obtiene la distancia entre el objeto y el jugador
var distancia_3 = point_distance(x, y, objMom.x, objMom.y);

if (distancia_3 <= distancia_umbral_green1) {
if (keyboard_check_pressed(ord("E"))) {
    // Cambiar entre 3 y 6
    if (indice_actual_green1 == 13) {
        indice_actual_green1 = 8;
		global.book_mom_green1=1;
    } else {
        indice_actual_green1 = 13;
		global.book_mom_green1=0;
    }
}



}
