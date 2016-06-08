import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class for_loop_simple extends PApplet {

int posX;
int posY;

public void setup() {
  
  posX = 1;
  posY = 100;
}

public void draw() {

  /*
   El "for loop" es basicamente..un loop :)
   Cuando el computador se encuentra con un for loop,
   va a ejecutar lo que este dentro una y otra vez
   hasta que se cumpla la condici\u00f3n que se especifica
   */

  background (250, 50, 250);

  for (int x=0; x<width; x+=20) {
    rect(posX * x, posY, 10, 10);
  }

  /*
   Este for loop dice:
   int x=0  -- crea un a variable x que es igual a 0 (valor inicial)
   x<width  -- repetir este loop hasta que x deje de ser menor a 'width'
   x+=10    -- en cada ciclo, agregamos 10 a x (es decir ir\u00e1 0-10-20-30)
   */
}

  public void settings() {  size(500, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "for_loop_simple" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
