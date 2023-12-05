// En el evento Key Press (E)

// Obtiene la distancia entre el objeto y el jugador
var distancia_4 = point_distance(x, y, objMom.x, objMom.y);

if (distancia_4 <= distancia_umbral_green2) {
if (keyboard_check_pressed(ord("E"))) {
    // Cambiar entre 3 y 6
    if (indice_actual_green2 == 13) {
        indice_actual_green2 = 9;
		global.book_mom_green2=1;
    } else {
        indice_actual_green2 = 13;
		global.book_mom_green2=0;
    }
}



}
