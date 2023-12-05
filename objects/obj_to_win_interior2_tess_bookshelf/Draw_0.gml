// Obtiene la distancia entre el objeto y el jugador
var distancia = point_distance(x, y, objTess.x, objTess.y);

// Verifica si el jugador está lo suficientemente cerca del objeto para verlo
if (distancia <= distancia_umbral) {
    // Si el jugador está dentro de la distancia umbral, dibuja el objeto
    draw_self();
}







