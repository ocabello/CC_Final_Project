//import java.util.Random;


class Airports {    //will handle all the effects/info from data related to airports
  color col;
  float xloc;
  float yloc;
  String airportID;
  String continent;
  float centerX;
  float centerY;
  float xposE;
  float xposA;
  float xposS;
  float xposO;
  float xposZ;
  float yposE;
  float yposA;
  float yposS;
  float yposO;
  float yposZ;
  //Random r = new Random(8107);
  float currentx;
  float currenty;
  //color currentcol;

  Airports(String id, String cont, float x, float y) {
    airportID = id;
    continent = cont;
    xloc = x;
    yloc = y;
    col = color(150, 100);
    centerX = width/2;
    centerY = height/2;
    xposE = width/2;
    xposA = width/6;
    xposS = width/6;
    xposO = width/3 * 2;
    xposZ = width/4 * 3;
    yposE = height/5.5;
    yposA = height/5;
    yposS = height/2;
    yposO = height/2;
    yposZ = height/3 *2;
  }
  void cluster() {
    //println(continent);
    if (continent.equals("E")) {  // E == Europe
      // println("Hello");
      currentx = xloc;
      currenty = yloc;
      fill(col);
      ellipse(xloc, yloc, 10, 10);
      if (xposE < xloc && yposE < yloc) {       //objects will move towards the center.
        xloc += -50;                                 //the direction in which the objects will move is relative to their
        yloc += -50;                                 //current position in the canvas.
      } else if (xposE > xloc && yposE < yloc) {
        xloc += 50;
        yloc += -50;
      } else if (xposE < xloc && yposE > yloc) {
        xloc += -50;
        yloc += 50;
      } else if (xposE > xloc && yposE > yloc) {
        xloc += 50;
        yloc += 50;
      }
    } else if (continent.equals("A")) { // A == US/Canada
      // println("Hello");
      currentx = xloc;
      currenty = yloc;
      fill(col);
      ellipse(xloc, yloc, 10, 10);
      if (xposA < xloc && yposA < yloc) {       //objects will move towards the center.
        xloc += -50;                                 //the direction in which the objects will move is relative to their
        yloc += -50;                                 //current position in the canvas.
      } else if (xposA > xloc && yposA < yloc) {
        xloc += 50;
        yloc += -50;
      } else if (xposA < xloc && yposA > yloc) {
        xloc += -50;
        yloc += 50;
      } else if (xposA > xloc && yposA > yloc) {
        xloc += 50;
        yloc += 50;
      }
    } else if (continent.equals("S")) {  // S == South America
      // println("Hello");
      currentx = xloc;
      currenty = yloc;
      fill(col);
      ellipse(xloc, yloc, 10, 10);
      if (xposS < xloc && yposS < yloc) {       //objects will move towards the center.
        xloc += -50;                                 //the direction in which the objects will move is relative to their
        yloc += -50;                                 //current position in the canvas.
      } else if (xposS > xloc && yposS < yloc) {
        xloc += 50;
        yloc += -50;
      } else if (xposS < xloc && yposS > yloc) {
        xloc += -50;
        yloc += 50;
      } else if (xposS > xloc && yposS > yloc) {
        xloc += 50;
        yloc += 50;
      }
    } else if (continent.equals("O")) {  // O == Australia
      //println("Hello");
      currentx = xloc;
      currenty = yloc;
      fill(col);
      ellipse(xloc, yloc, 10, 10);
      if (xposO < xloc && yposO < yloc) {       //objects will move towards the center.
        xloc += -50;                                 //the direction in which the objects will move is relative to their
        yloc += -50;                                 //current position in the canvas.
      } else if (xposO > xloc && yposO < yloc) {
        xloc += 50;
        yloc += -50;
      } else if (xposO < xloc && yposO > yloc) {
        xloc += -50;
        yloc += 50;
      } else if (xposO > xloc && yposO > yloc) {
        xloc += 50;
        yloc += 50;
      }
    } else if (continent.equals("Z")) {  // Z == New Zealand
      // println("Hello");
      currentx = xloc;
      currenty = yloc;
      fill(col);
      ellipse(xloc, yloc, 10, 10);
      if (xposZ < xloc && yposZ < yloc) {       //objects will move towards the center.
        xloc += -50;                                 //the direction in which the objects will move is relative to their
        yloc += -50;                                 //current position in the canvas.
      } else if (xposZ > xloc && yposZ < yloc) {
        xloc += 50;
        yloc += -50;
      } else if (xposZ < xloc && yposZ > yloc) {
        xloc += -50;
        yloc += 50;
      } else if (xposZ > xloc && yposZ > yloc) {
        xloc += 50;
        yloc += 50;
      }
    }
  }

  void displayAirport() {   //representing airports as circles
    if (mousePressed) {
      if (currentx != 0 && currenty !=0) {
        fill(0, 255, 255, 100);
        // fill(32, 178, 170, 100);
        ellipse(currentx, currenty, 10, 10);
        if (centerX < currentx && centerY < currenty) {       //objects will move towards the center.
          currentx += -50;                                 //the direction in which the objects will move is relative to their
          currenty += -50;                                 //current position in the canvas.
        } else if (centerX > currentx && centerY < currenty) {
          currentx += 50;
          currenty += -50;
        } else if (centerX < currentx && centerY > currenty) {
          currentx += -50;
          currenty += 50;
        } else if (centerX > currentx && centerY > currenty) {
          currentx += 50;
          currenty += 50;
        }
      }
    } else {
      this.cluster();
    }
  }
}