// Edwin Jonathan Lizcano Vazquez. grupo A2

import processing.video.*;
Movie vid;
int tam = 5;
color c;

Efectos ef;


void setup () 
{
  size (720,480);
  vid = new Movie (this, "saita.mp4"); 
  ef = new Efectos ();  
  //vid.play();
}

void movieEvent(Movie m) 
{
  m.read();
}

void draw () 
{  
  background (0);
   //image(vid, 0, 0, width, height);
    text ("presionar alguna opcion para iniciar.",240,240);
  
  if (key == 'v' || key == 'V')
  {    
    image(vid, 0, 0, width, height);
    vid.play();
  }
  
  if (key == 'b' || key == 'B')
  {
    ef.cubos(); 
    vid.play();
  } 
  
  if (key == 'n')
  {
    background (0);
    ef.texto();
    vid.play();
  } 
  
  if (key == 'm' || key == 'M')
  {
    ef.negativo();
    vid.play();
  } 
  
  if (key == 'p' || key == 'P')
  {
    vid.pause();
  } 
  
  fill(0);
  stroke(255);
  rect (0,440,719,40);
  fill (0,255,0);
  textSize (15);
  text("V = original video.---- B = pixels.---- N = Matrix.---- M = vision nocturna.---- P = pausa.",10,460);
 
}
