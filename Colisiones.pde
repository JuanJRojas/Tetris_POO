boolean Identificar_Colision_Lateral(int[] Bloque,int[][]mapa,int d){
  boolean Golpe=false;
  int x;
  int y;
  for(int i=1;i<8;i+=2){
    x=(Bloque[i]-300+d)/40;
    y=(Bloque[i+1]-50)/40;
    if(x<10 && 0<=x){
      if(mapa[y][x]!=0){
        Golpe=true;
        return Golpe;
      }
    }
    else{
      Golpe=true;
    }
  }
  return Golpe;
}
boolean Identificar_Colision(int[] Bloque,int[][] mapa){
  int y;
  int x;
  for(int i = 2;i<9;i+=2){
    x=(Bloque[i-1]-300)/40;
    y=(Bloque[i]-50)/40;
    if(y==19||mapa[y+1][x]!=0){
      return true;
    }
  }
  return false;
}
boolean Identificar_Colision_Al_Rotar(int[]Bloque,int[][]mapa){
  for(int i = 2;i<9;i+=2){
      if((Bloque[i-1]-300)/40<0 || (Bloque[i-1]-300)/40>9 || 0>(Bloque[i]-50)/40 || 19<(Bloque[i]-50)/40 || mapa[(Bloque[i]-50)/40][(Bloque[i-1]-300)/40] != 0 ){
        return false;
      }
    }
  return true;
}
