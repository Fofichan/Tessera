// En el evento Key Press (E)

// Obtiene la distancia entre el objeto y el jugador
var distancia_7 = point_distance(x, y, objMom.x, objMom.y);

if (distancia_7 <= distancia_umbral_red3) {
if (keyboard_check_pressed(ord("E"))) {
    // Cambiar entre 3 y 6
    if (indice_actual_red3 == 15) {
        indice_actual_red3 = 20;
		global.book_mom_red3=1;
    } else {
        indice_actual_red3 = 15;
		global.book_mom_red3=0;
    }
}



}
