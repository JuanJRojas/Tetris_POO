int[] Tetrimino;
int[][]Nuevo_Tipo;
int[] Guardada={0,0,0,0,0,0,0,0,0};
int[][] Crear_Nuevo_Tipo(int Tipo){
  int[][] x={};
  if(Tipo==1){
    int[][] New={{0,0,0,0},{1,1,1,1},{0,0,0,0},{0,0,0,0}};x=New;}
    if(Tipo==2){
    int[][] New={{0,0,1},{0,0,1},{0,1,1}};x=New;}
    if(Tipo==3){
    int[][] New={{0,1,1},{0,0,1},{0,0,1}};x=New;}
    if(Tipo==4){
    int[][] New={{1,1},{1,1}};x=New;}
    if(Tipo==5){
    int[][] New={{0,0,1},{0,1,1},{0,0,1}};x=New;}
    if(Tipo==6){
    int[][] New={{0,1,0},{0,1,1},{0,0,1}};x=New;}
    if(Tipo==7){
    int[][] New={{0,0,1},{0,1,1},{0,1,0}};x=New;}
  return x;
}
void Crear_Bloque(int x, int y, int[] Color){
  fill(Color[0],Color[1],Color[2]);
  square(x,y,40);
}
int[] Crear_Tetrimino(int Tipo,int x, int y){
  int[] Bloques={};
  if (Tipo==1){
    Bloques = append(Bloques, 1);
    Nuevo_Tipo=Crear_Nuevo_Tipo(Tipo);
    for (int i = 0 ; i<4 ; i++){
      for(int j = 0 ; j<4 ; j++){
        if (Nuevo_Tipo[j][i] == 1){
          Bloques = append(Bloques, width/2+x/2+40*i);
          Bloques = append(Bloques, 40*j+y);
        }
      }
    }
  }
  else if (Tipo==2){
    Nuevo_Tipo=Crear_Nuevo_Tipo(Tipo);
    Bloques = append(Bloques,2);
    for (int i = 0 ; i<3 ; i++){
      for(int j = 0 ; j<3 ; j++){
        if (Nuevo_Tipo[j][i] == 1){
          Bloques = append(Bloques, width/2+x/2+40*i);
          Bloques = append(Bloques, 40*j+y);
        }
      }
    }    
  }
  else if (Tipo==3){
    Nuevo_Tipo=Crear_Nuevo_Tipo(Tipo);
    Bloques = append(Bloques, 3);
    for (int i = 0 ; i<3 ; i++){
      for(int j = 0 ; j<3 ; j++){
        if (Nuevo_Tipo[j][i] == 1){
          Bloques = append(Bloques, width/2+x/2+40*i);
          Bloques = append(Bloques, 40*j+y);
        }
      }
    }
  }
  else if (Tipo==4){
    Nuevo_Tipo=Crear_Nuevo_Tipo(Tipo);
    Bloques = append(Bloques,4);
    for (int i = 0 ; i<2 ; i++){
      for(int j = 0 ; j<2 ; j++){
        if (Nuevo_Tipo[j][i] == 1){
          Bloques = append(Bloques, width/2+x/2+40*i);
          Bloques = append(Bloques, 40*j+y);
        }
      }
    }    
  }
  else if (Tipo==5){
    Nuevo_Tipo=Crear_Nuevo_Tipo(Tipo);
    Bloques = append(Bloques, 5);
    for (int i = 0 ; i<3 ; i++){
      for(int j = 0 ; j<3 ; j++){
        if (Nuevo_Tipo[j][i] == 1){
          Bloques = append(Bloques, width/2+x/2+40*i);
          Bloques = append(Bloques, 40*j+y);
        }
      }
    }    
  }
  else if (Tipo==6){
    Nuevo_Tipo=Crear_Nuevo_Tipo(Tipo);
    Bloques = append(Bloques, 6);
    for (int i = 0 ; i<3 ; i++){
      for(int j = 0 ; j<3 ; j++){
        if (Nuevo_Tipo[j][i] == 1){
          Bloques = append(Bloques, width/2+x/2+40*i);
          Bloques = append(Bloques, 40*j+y);
        }
      }
    }    
  }
  else if (Tipo==7){
    Nuevo_Tipo=Crear_Nuevo_Tipo(Tipo);
    Bloques = append(Bloques, 7);
    for (int i = 0 ; i<3 ; i++){
      for(int j = 0 ; j<3 ; j++){
        if (Nuevo_Tipo[j][i] == 1){
          Bloques = append(Bloques, width/2+x/2+40*i);
          Bloques = append(Bloques, 40*j+y);
        }
      }
    }    
  }
  Bloques=append(Bloques,0);
  return Bloques;
}
void Actualizar_Tetrimino(int[] Bloque){
  for(int i = 2;i<9;i+=2){
    Bloque[i]=caer(Bloque[i]);
  }
}
void Dibujar_Tetrimino(int[]Bloque){
  int[] Color = {0,0,0};
  if (Bloque[0]==1){
    Color[0]= 159;
    Color[1]=213;
    Color[2]=209;
  }
  if (Bloque[0]==2){
    Color[0]= 0;
    Color[1]=47;
    Color[2]=187;
  }
  if (Bloque[0]==3){
    Color[0]= 239;
    Color[1]=127;
    Color[2]=26;
  }
  if (Bloque[0]==4){
    Color[0]= 255;
    Color[1]=233;
    Color[2]=0;
  }
  if (Bloque[0]==5){
    Color[0]= 163;
    Color[1]=73;
    Color[2]=164;
  }
  if (Bloque[0]==6){
    Color[0]=230;
    Color[1]=0;
    Color[2]=38;
  }
  if (Bloque[0]==7){
    Color[0]=0;
    Color[1]=152;
    Color[2]=70;
  }
  for(int i=1 ; i<9 ; i+=2){
    Crear_Bloque(Bloque[i],Bloque[i+1],Color);
  }
}
int[] Actualizar_Movimiento(int[] Bloque,int x,String a){
  for(int i=1;i<8;i+=2){
    if(a=="x"){
      Bloque[i]=Bloque[i]+x;
    }
    else{
      Bloque[i+1]=Bloque[i+1]+x;
    }
  }
  return Bloque;
}
int[] Guardar_Ficha(int Tipo){
  int[] Intermedio= Crear_Tetrimino(Tipo,-880,200);
  if (Guardada[0]==0){
    Tetrimino=Crear_Tetrimino(Proxima_Ficha,-80,50);
    Proxima_Ficha= int(random(1,7.5));
  }
  else{
    Tetrimino=Crear_Tetrimino(Guardada[0],-80,50);
  }
  return Intermedio;
}
