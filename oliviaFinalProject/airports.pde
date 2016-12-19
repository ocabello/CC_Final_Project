
class Airports {    //will handle all the effects/info from data related to airports
  color col;
  float xloc;
  float yloc;
  String airportID;
  String continent;
  float centerX;
  float centerY;     
  float xposE;       //x,y coordinates that define position of each continent that was 
  float xposA;       //available in openflights file
  float xposS;
  float xposO;
  float xposZ;
  float yposE;
  float yposA;
  float yposS;
  float yposO;
  float yposZ;
  float currentx;
  float currenty;

  Airports(String id, String cont, float x, float y) { //constructor
    airportID = id;
    continent = cont;
    xloc = x;
    yloc = y;
    col = color(150, 100);
    centerX = width/2;
    centerY = height/2;
    xposE = width/2 + 150;
    xposA = width/6 + 100;
    xposS = width/6 + 100;
    xposO = width/3 * 2 + 100;
    xposZ = width/4 * 3 + 100;
    yposE = height/5.5 + 50;
    yposA = height/5 + 50;
    yposS = height/2;
    yposO = height/2;
    yposZ = height/3 *2;
  }

  void cluster() {            //this method groups all airports according to the continent they
    ellipseMode(CENTER);      //are located in
    //println(continent);
    if (continent.equals("E")) {  // E == Europe
      // println("Hello");
      currentx = xloc;     //store current x,y coordinates so that the canvas can be reset to
      currenty = yloc;     //continent grouping after the mouse is pressed and released
      fill(col);
      ellipse(xloc, yloc, 10, 10);
      if (xposE < xloc && yposE < yloc) {
        xloc += -100;                               //shows spacing between xposE (center location of continent) and airports
        yloc += -100;                               //spacing varies according to number of airports
      } else if (xposE > xloc && yposE < yloc) {
        xloc += 100;
        yloc += -100;
      } else if (xposE < xloc && yposE > yloc) {
        xloc += -100;
        yloc += 100;
      } else if (xposE > xloc && yposE > yloc) {
        xloc += 100;
        yloc += 100;
      }
    } else if (continent.equals("A")) { // A == US/Canada
      // println("Hello");
      currentx = xloc;
      currenty = yloc;
      fill(col);
      ellipse(xloc, yloc, 10, 10);
      if (xposA < xloc && yposA < yloc) { 
        xloc += -125;
        yloc += -125;
      } else if (xposA > xloc && yposA < yloc) {
        xloc += 125;
        yloc += -125;
      } else if (xposA < xloc && yposA > yloc) {
        xloc += -125;
        yloc += 125;
      } else if (xposA > xloc && yposA > yloc) {
        xloc += 125;
        yloc += 125;
      }
    } else if (continent.equals("S")) {  // S == South America
      // println("Hello");
      currentx = xloc;
      currenty = yloc;
      fill(col);
      ellipse(xloc, yloc, 10, 10);
      if (xposS < xloc && yposS < yloc) {
        xloc += -50;                                
        yloc += -50;
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
      if (xposO < xloc && yposO < yloc) {
        xloc += -35;
        yloc += -35;
      } else if (xposO > xloc && yposO < yloc) {
        xloc += 35;
        yloc += -35;
      } else if (xposO < xloc && yposO > yloc) {
        xloc += -35;
        yloc += 35;
      } else if (xposO > xloc && yposO > yloc) {
        xloc += 35;
        yloc += 35;
      }
    } else if (continent.equals("Z")) {  // Z == New Zealand
      // println("Hello");
      currentx = xloc;
      currenty = yloc;
      fill(col);
      ellipse(xloc, yloc, 10, 10);
      if (xposZ < xloc && yposZ < yloc) {
        xloc += -20;
        yloc += -20;
      } else if (xposZ > xloc && yposZ < yloc) {
        xloc += 20;
        yloc += -20;
      } else if (xposZ < xloc && yposZ > yloc) {
        xloc += -20;
        yloc += 20;
      } else if (xposZ > xloc && yposZ > yloc) {
        xloc += 20;
        yloc += 20;
      }
    }
  }

  void displayAirport() {   //representing airports as circles
    if (mousePressed) {
      if (currentx != 0 && currenty !=0) {
        fill(0, 255, 255, 100);              //color of ellipses changes after mouse is pressed
        ellipse(currentx, currenty, 10, 10);
        if (centerX < currentx && centerY < currenty) {       //objects will move towards the center.
          currentx += -20;                                 //the direction in which the objects will move is relative to their
          currenty += -20;                                 //current position in the canvas.
        } else if (centerX > currentx && centerY < currenty) {
          currentx += 20;
          currenty += -20;
        } else if (centerX < currentx && centerY > currenty) {
          currentx += -20;
          currenty += 20;
        } else if (centerX > currentx && centerY > currenty) {
          currentx += 20;
          currenty += 20;
        }
      }
    } else {
      this.cluster();   //execute cluster() method
    }
  }
}