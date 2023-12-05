// En el evento Key Press (E)

// Obtiene la distancia entre el objeto y el jugador
var distancia_6 = point_distance(x, y, objMom.x, objMom.y);

if (distancia_6 <= distancia_umbral_red2) {
if (keyboard_check_pressed(ord("E"))) {
    // Cambiar entre 3 y 6
    if (indice_actual_red2 == 14) {
        indice_actual_red2 = 20;
		global.book_mom_red2=1;
    } else {
        indice_actual_red2 = 14;
		global.book_mom_red2=0;
    }
}



}
