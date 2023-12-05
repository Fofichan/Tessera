// En el evento Key Press (E)

// Obtiene la distancia entre el objeto y el jugador
var distancia_2 = point_distance(x, y, objMom.x, objMom.y);

if (distancia_2 <= distancia_umbral_black2) {
if (keyboard_check_pressed(ord("E"))) {
    // Cambiar entre 3 y 6
    if (indice_actual_black2 == 35) {
        indice_actual_black2 = 41;
		global.book_mom_black2=1;
    } else {
        indice_actual_black2 = 35;
		global.book_mom_black2=0;
    }
}



}
