//import java.util.Random;


class Airports {    //will handle all the effects/info from data related to airports
  color col;
  float xloc;
  float yloc;
  String airportID;
  float centerX;
  float centerY;
  //Random r = new Random(8107);
  float currentx;
  float currenty;

  Airports(String id, float x, float y) {
    airportID = id;
    xloc = x;
    yloc = y;
    currentx = xloc;
    currenty = yloc;
    //col = color(50, 240, 32, 100);
    col = color(150, 100);
    centerX = width/2;
    centerY = height/2;
  }

  void displayAirport() {   //representing airports as circles
    if (mousePressed) {
      fill(col);
      ellipse(xloc, yloc, 10, 10);
      if (centerX < xloc && centerY < yloc) {       //objects will move towards the center.
        xloc += -50;                                 //the direction in which the objects will move is relative to their
        yloc += -50;                                 //current position in the canvas.
      } else if (centerX > xloc && centerY < yloc) {
        xloc += 50;
        yloc += -50;
      } else if (centerX < xloc && centerY > yloc) {
        xloc += -50;
        yloc += 50;
      } else if (centerX > xloc && centerY > yloc) {
        xloc += 50;
        yloc += 50;
      }
    } else {
      fill(col);
      ellipse(currentx, currenty, 10, 10);
    }
  }

}