# Tetris_POO
Este es un proyecto de repaso de programación estructurada para Programación Orientada a Objetos, donde se construye el juego Tetris en Processing, con Java.
#¿Cómo jugar?
El juego consiste en eliminar filas de bloques para ganar puntos y evitar que los bloques se apilen en las columnas. Estas filas se eliminan cuando no quedan espacios vacíos en ella, por lo que hay que posicionar los tetrominos de tal forma que se llene la mayor cantidad de espacio lateral. Al eliminar una fila, el jugador obtiene 100 puntos. Sube de nivel cuando la cantidad de puntos es igual al cuadrado del nivel, veces mil (nivel^2 * 1000). A medida que aumente el nivel, más rápido caerán las fichas y, así mismo, más puntos podrán obtenerse.
#Controles:
Para este juego hay seis teclas que se deben tener en cuenta. "A" que mueve al tetromino una cuadrícula a la izquierda, "D", que mueve al tetromino una cuadrícula a la derecha, "S" que mueve al tetromino una cuadrícula hacia abajo, "C" que guarda el tetromino que está cayendo actualmente por uno en la casilla de "Guardado" (O en su defecto, el próximo que caerá), "Q", que rota el tetromino 90° en dirección antiohorario y "R" que rota el tetromino 90° en dirección Horaria.
#Interfaz:
En la pantalla se mostrarán cuatro casillas. En la esquina superior izquierda se encuentra la casilla de "Guardado", en ella se mostrará el tetromino que se encuentre guardado en ese instante. En la esquina inferior izquierda se encuentra la casilla de "Puntuación", donde se muestra la puntuación actual junto al nivel. En la esquina superior derecha se encuentra la casilla de "Próxima Ficha", en ella se muestra la próxima ficha a jugar, una vez sea depositada la actualmente en juego. Por último, la casilla que se encuentra en el centro y ocupa la mayor parte de la pantalla es la cuadrícula de juego, donde serán depositados los tetrominos y se ganarán los puntos.
#Fin del juego:
Una vez un bloque del tetromino alcance la celda más cercana al tope de la pantalla terminará el juego y se cambiará el fondo por uno con su puntaje escrito en el centro de la pantalla.
Una vez llegados aquí, sólo resta desear un buen tiempo de juego.
