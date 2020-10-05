int[] Rotacion(int[]Bloque, int[][] Tipo,int Direccion){
  int[][]m={};
  int[] Nuevo_Bloque={};
  int x= Bloque[1]+40;
  int y= Bloque[2]+40;
  if(Bloque[0]==4){return Bloque;}
  if(Direccion==0){
    if(Bloque[0]==1){
      int[][]n={{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}};
      for(int i=0;i<4;i++){
        for(int j=0;j<4;j++){
          n[j][i]=Tipo[i][3-j];
        }
      }
      m=n;
    }
    else{
      int[][]n={{0,0,0},{0,0,0},{0,0,0}};
      for(int i=0;i<3;i++){
        for(int j=0;j<3;j++){
          n[j][i]=Tipo[i][2-j];
        }
      }
      m=n;
    }
  }
  else{
    if(Bloque[0]==1){
      int[][]n={{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}};
      for(int i=0;i<4;i++){
        for(int j=0;j<4;j++){
          n[j][i]=Tipo[3-i][j];
    }
  }
  m=n;
    }
    else{
      int[][]n={{0,0,0},{0,0,0},{0,0,0}};
      for(int i=0;i<3;i++){
        for(int j=0;j<3;j++){
          n[j][i]=Tipo[2-i][j];
    }
  }
  m=n;
    }
  }
  if(Bloque[0]==1){
    Nuevo_Bloque=append(Nuevo_Bloque,1);
    for(int i=0;i<4;i++){
      for(int j=0;j<4;j++){
        if(m[j][i]==1){
          Nuevo_Bloque=append(Nuevo_Bloque,x-i*40);
          Nuevo_Bloque=append(Nuevo_Bloque,y-j*40);
        }
      }
    }
  }
  else{
    Nuevo_Bloque=append(Nuevo_Bloque,Bloque[0]);
    for(int i=0;i<3;i++){
      for(int j=0;j<3;j++){
        if(m[j][i]==1){
          Nuevo_Bloque=append(Nuevo_Bloque,x-i*40);
          Nuevo_Bloque=append(Nuevo_Bloque,y-j*40);
        }
      }
    }
  } 
  if(Identificar_Colision_Al_Rotar(Nuevo_Bloque,Mapa)==true){
      Bloque=Nuevo_Bloque;
      Nuevo_Tipo=m;}
      return Bloque;
}
int caer(int y){
    delay(100/lvl);
    return (y+40);
}
