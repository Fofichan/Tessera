// En el evento Key Press (E)

// Obtiene la distancia entre el objeto y el jugador
var distancia_5 = point_distance(x, y, objMom.x, objMom.y);

if (distancia_5 <= distancia_umbral_red1) {
if (keyboard_check_pressed(ord("E"))) {
    // Cambiar entre 3 y 6
    if (indice_actual_red1 == 16) {
        indice_actual_red1 = 20;
		global.book_mom_red1=1;
    } else {
        indice_actual_red1 = 16;
		global.book_mom_red1=0;
    }
}



}
