class Efectos 
{
  int x, y, s;
  char le;  
  int r,g,b;
  Efectos ()
  {
    //x=x_;
    //y=y_;    
  }
  
  void cubos ()
  {
    
    for (int i =0; i<vid.width; i+= tam)
  {
    for (int j =0; j<vid.height; j+= tam)
    {
      color c = vid.get (i,j);
      fill (c);
      noStroke();
      rect (i,j,tam,tam);
    }
   }
  }
  
  void texto ()
  {
    this.le = char(int(random(65,127)));
    for (int i =0; i<width; i+= tam)
  {
    for (int j =0; j<height; j+= tam)
    { 
      
      float g = green (vid.get(i,j));
            
      fill (0,g,0);
      stroke(255);      
      textSize (tam);
      text (le,i,j);
      
    }
   }
  }
  
  void negativo ()
  {
    loadPixels();
  vid.loadPixels();
  
  for (int i =0; i<vid.width; i++)
  {
    for (int j =0; j<vid.height; j++)
    { 
      //color c = vid.get (i,j);
      int loc = i+j*width;
      float r = red (vid.get(i,j));
      float g = green (vid.get(i,j));
      float b = blue (vid.get(i,j));
      pixels[loc]=color(255-r,250-g,255-b);
      
    }
   }
  
  updatePixels();
  }
  
}
