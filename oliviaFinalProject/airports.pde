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
    currentx = xloc;
    currenty = yloc;
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

  void cluster(){
    //println(continent);
    if (continent.equals("E")){  // E == Europe
      println("Hello");
      fill(col);
      ellipse(currentx, currenty, 10, 10);
      if (xposE < currentx && yposE < currenty) {       //objects will move towards the center.
        currentx += -50;                                 //the direction in which the objects will move is relative to their
        currenty += -50;                                 //current position in the canvas.
      } else if (xposE > currentx && yposE < currenty) {
        currentx += 50;
        currenty += -50;
      } else if (xposE < currentx && yposE > currenty) {
        currentx += -50;
        currenty += 50;
      } else if (xposE > currentx && yposE > currenty) {
        currentx += 50;
        currenty += 50;
      }
    }
     else if (continent.equals("A")){ // A == US/Canada
      println("Hello");
      fill(col);
      ellipse(currentx, currenty, 10, 10);
      if (xposA < currentx && yposA < currenty) {       //objects will move towards the center.
        currentx += -50;                                 //the direction in which the objects will move is relative to their
        currenty += -50;                                 //current position in the canvas.
      } else if (xposA > currentx && yposA < currenty) {
        currentx += 50;
        currenty += -50;
      } else if (xposA < currentx && yposA > currenty) {
        currentx += -50;
        currenty += 50;
      } else if (xposA > currentx && yposA > currenty) {
        currentx += 50;
        currenty += 50;
      }
    }
     else if (continent.equals("S")){  // S == South America
     println("Hello");
     fill(col);
     ellipse(currentx, currenty, 10, 10);
     if (xposS < currentx && yposS < currenty) {       //objects will move towards the center.
        currentx += -50;                                 //the direction in which the objects will move is relative to their
        currenty += -50;                                 //current position in the canvas.
      } else if (xposS > currentx && yposS < currenty) {
        currentx += 50;
        currenty += -50;
      } else if (xposS < currentx && yposS > currenty) {
        currentx += -50;
        currenty += 50;
      } else if (xposS > currentx && yposS > currenty) {
        currentx += 50;
        currenty += 50;
      }
    }
     else if (continent.equals("O")){  // O == Australia
      println("Hello");
      fill(col);
      ellipse(currentx, currenty, 10, 10);
      if (xposO < currentx && yposO < currenty) {       //objects will move towards the center.
        currentx += -50;                                 //the direction in which the objects will move is relative to their
        currenty += -50;                                 //current position in the canvas.
      } else if (xposO > currentx && yposO < currenty) {
        currentx += 50;
        currenty += -50;
      } else if (xposO < currentx && yposO > currenty) {
        currentx += -50;
        currenty += 50;
      } else if (xposO > currentx && yposO > currenty) {
        currentx += 50;
        currenty += 50;
      }
    }
     else if (continent.equals("Z")){  // Z == New Zealand
      println("Hello");
      fill(col);
      ellipse(currentx, currenty, 10, 10);
      if (xposZ < currentx && yposZ < currenty) {       //objects will move towards the center.
        currentx += -50;                                 //the direction in which the objects will move is relative to their
        currenty += -50;                                 //current position in the canvas.
      } else if (xposZ > currentx && yposZ < currenty) {
        currentx += 50;
        currenty += -50;
      } else if (xposZ < currentx && yposZ > currenty) {
        currentx += -50;
        currenty += 50;
      } else if (xposZ > currentx && yposZ > currenty) {
        currentx += 50;
        currenty += 50;
      }
    }
  }

  void displayAirport() {   //representing airports as circles
    if (mousePressed) {
      fill(0, 255, 255, 100);
     // fill(32, 178, 170, 100);
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