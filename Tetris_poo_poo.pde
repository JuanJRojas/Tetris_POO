boolean In_Game= false;
boolean Game_Over=false;
boolean Colision;
int lvl=1;
int Puntaje=0;
int Proxima_Ficha=1;
void Aumentar_Puntuacion(int Aumento){
  Puntaje+=Aumento*lvl;
}
void Aumentar_Nivel(){
  if(Puntaje>lvl*lvl*1000){
    lvl+=1;
  }
}
void setup(){
size(1000,900);
//Puntaje de una filas destruidas a la vez = 100//
//Puntaje de dos filas destruidas a la vez = 300//
//Puntaje de tres filas destruidas a la vez = 500//
//Puntaje de cuatro filas destruidas a la vez = 800//
//Cada bloque recorrido con velocidad rápida otorga 1 puntos//
//Cada nivel es un multiplicador de puntos//
}
void draw(){
  if(Game_Over==false){
  Dibujar_mapa(Mapa);
  if (In_Game==false){
    Tetrimino=Crear_Tetrimino(Proxima_Ficha,-80,50);
    In_Game=true;
    Proxima_Ficha =int(random(1,7.5));
    Refrescar_Inconsecuente();
    Tetrimino=Crear_Tetrimino(Tetrimino[0],-80,50);
  }
  Dibujar_Tetrimino(Tetrimino);
  Colision=Identificar_Colision(Tetrimino,Mapa);
  if (Colision==false){
    Actualizar_Tetrimino(Tetrimino);
  }
  else{
    Actualizar_Mapa_Colision_Y(Mapa,Tetrimino);
    In_Game=false;
  }
  Mapa=Destruir_Fila(Mapa);
  Game_Over();
  }
}
void keyPressed(){
  if(key=='a' || key=='A'){
    if(Identificar_Colision_Lateral(Tetrimino,Mapa,-40)==false){
      Actualizar_Movimiento(Tetrimino,-40,"x");
    }
  }
  else if (key=='d'||key=='D'){
    if(Identificar_Colision_Lateral(Tetrimino,Mapa,40)==false){
      Actualizar_Movimiento(Tetrimino,40,"x");
    }
  }
  else if (key=='r'||key=='R'){
    Tetrimino=Rotacion(Tetrimino,Nuevo_Tipo,0);
  }
  else if (key=='q'||key=='Q'){
    Tetrimino=Rotacion(Tetrimino,Nuevo_Tipo,1);
  }
  else if (key=='s'||key=='S'){
    if(Identificar_Colision(Tetrimino,Mapa)==false){
      Actualizar_Movimiento(Tetrimino,40,"y");
      Aumentar_Puntuacion(1);
    }
  }
  else if(key=='c'||key=='C'){
    Guardada=Guardar_Ficha(Tetrimino[0]);
    Refrescar_Inconsecuente();
    Tetrimino=Crear_Tetrimino(Tetrimino[0],-80,50);
  }
}
void Game_Over(){
  for (int i=0;i<10;i++){
    if(Mapa[0][i]!=0){
      Game_Over=true;
      background(255);
      fill(0);
      textSize(60);
      text("GAME OVER",width/2-200,height/2-100);
      textSize(30);
      text("Su puntaje fue de "+str(Puntaje),width/2-200,height/2);
      
    }
  }
}
