// Obtiene la distancia entre el objeto y el jugador
var distancia = point_distance(x, y, objTess.x, objTess.y);

// Define una distancia umbral a partir de la cual el objeto será visible
var distancia_umbral = 40; // Ajusta este valor según lo cerca que quieres que esté el jugador para ver el objeto

// Verifica si el jugador está lo suficientemente cerca del objeto para verlo
if (distancia <= distancia_umbral) {
    // Si el jugador está dentro de la distancia umbral, dibuja el objeto
    draw_self();
}






