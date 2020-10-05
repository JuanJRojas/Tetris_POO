int[][] Mapa =  {{0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0}};
int[][] Actualizar_Mapa_Colision_Y(int[][] mapa, int[] Bloque){
  int y;
  int x;
  for (int i = 1;i<8;i+=2){
    x=(Bloque[i]-300)/40;
    y=(Bloque[i+1]-50)/40;
    mapa[y][x]=Bloque[0];
  }
  return mapa;
}
void Dibujar_mapa(int[][] mapa){
  for(int i=0;i<10;i++){
    for(int j=0;j<20;j++){
      int n = mapa[j][i];
      if (n==0){
        int[] h = {255,255,255};
        Crear_Bloque(width/2-200+i*40,height/2-400+j*40,h);
      }
      else if (n==1){
        int[] h = {159, 213, 209};
        Crear_Bloque(width/2-200+i*40,height/2-400+j*40,h);
      }
      else if (n==2){
        int[] h = {0, 47, 187};
        Crear_Bloque(width/2-200+i*40,height/2-400+j*40,h);
      }
      else if (n==3){
        int[] h = {239, 127, 26};
        Crear_Bloque(width/2-200+i*40,height/2-400+j*40,h);
      }
      else if (n==4){
        int[] h = {255, 233, 0};
        Crear_Bloque(width/2-200+i*40,height/2-400+j*40,h);
      }
      else if (n==5){
        int[] h = {163, 73, 164};
        Crear_Bloque(width/2-200+i*40,height/2-400+j*40,h);
      }
      else if (n==6){
        int[] h = {230, 0, 38};
        Crear_Bloque(width/2-200+i*40,height/2-400+j*40,h);
      }
      else if (n==7){
        int[] h = {0, 152, 70};
        Crear_Bloque(width/2-200+i*40,height/2-400+j*40,h);
      }
    }
  }
}
boolean Identificar_Fila_Llena(int[]Fila){
  for (int i=0;i<10;i++){
    if(Fila[i]==0){
      return false;
    }
  }
  return true;
}
boolean Identificar_falta_0(int[]Fila){
  for (int i=0;i<10;i++){
    if (Fila[i]!=0){
      return true;
    }
  }
  return false;
}
int[][] Destruir_Fila(int[][] mapa){
  int a=0;
  for (int i=19;i>0;i=i-1){
    if (Identificar_falta_0(mapa[i])==false){
      return mapa;
    }
    if(Identificar_Fila_Llena(mapa[i])==true){
      a=i;
      if (Identificar_Fila_Llena(mapa[a-1])==true){
        if (Identificar_Fila_Llena(mapa[a-2])==true){
          if (Identificar_Fila_Llena(mapa[a-3])==true){
            for(int d=a;d>3;d-=1){
              for(int h=0;h<10;h++){
                mapa[d][h]=mapa[d-4][h];
              }
            }
            Aumentar_Puntuacion(800);
            return mapa;
          }
          for(int d=a;d>2;d-=1){
            for(int h=0;h<10;h++){
              mapa[d][h]=mapa[d-3][h];
            }
          }
          Aumentar_Puntuacion(500);
          return mapa;
        }
        for(int d=a;d>3;d-=1){
          for(int h=0;h<10;h++){
            mapa[d][h]=mapa[d-2][h];
          }
        }
        Aumentar_Puntuacion(300);
        return mapa;
      }
        for(int d=a;d>0;d-=1){
          for(int h=0;h<10;h++){
            mapa[d][h]=mapa[d-1][h];
          }
        }
      Aumentar_Puntuacion(100);
      return mapa;
    }
  }
  return mapa;
}
void Refrescar_Inconsecuente(){
  fill(255);
  rect(width/2+250,height/2-350,200,350);
  rect(width/2-450,height/2-350,200,250);
  rect(width/2-450,height/2+50,200,300);
  Dibujar_Tetrimino(Guardada);
  Dibujar_Tetrimino(Crear_Tetrimino(Proxima_Ficha,550,200));
  fill(0);
  textSize(24);
  text("Próxima Ficha: ",width/2+260,height/2-300);
  text("Ficha guardada: ",width/2-440,height/2-300);
  text("Puntuación: "+ str(Puntaje),width/2-440,height/2+100);
  text("Nivel: "+str(lvl),width/2-440,height/2+250);
}
