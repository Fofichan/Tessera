// En el evento Key Press (E)

// Obtiene la distancia entre el objeto y el jugador
var distancia_1 = point_distance(x, y, objMom.x, objMom.y);

if (distancia_1 <= distancia_umbral_black1) {
if (keyboard_check_pressed(ord("E"))) {
    // Cambiar entre 3 y 6
    if (indice_actual_black1 == 39) {
        indice_actual_black1 = 41;
		global.book_mom_black1=1;
    } else {
        indice_actual_black1 = 39;
		global.book_mom_black1=0;
    }
}



}
