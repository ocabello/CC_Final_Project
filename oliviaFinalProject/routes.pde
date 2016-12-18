class Routes extends Airports { //Routes class inherits from Airports class
  color c;                      // will be manipulating the shapes that display routes here
  String origAirport;
  String destAirport;
  float velocity;
  float speed;
  float currentvel;
  float currentspeed;

  Routes(String airport, String continent, String origin, String destination, float x, float y) {
    super(airport, continent, x, y);                                                      //accessing constructor of Airports class
    origAirport = origin;
    destAirport = destination;
    c = color(random(234), random(50), random(100), 50);
    velocity = 0;
    speed = random(0.1, 4);
    currentvel = velocity;
    currentspeed = speed;
  }
  void moveToDest() {
    if (destAirport.equals("LGA") || destAirport.equals("LAX") || destAirport.equals("ATL") || destAirport.equals("ORD") || destAirport.equals("DFW")) {  // 
      // println(destAirport);
      // println("Hello");
      // println(continent);
      currentx = xloc;
      currenty = yloc;
      fill(c);
      rect(xloc, yloc, 5, 10);
      if (xposA+random(-100, 100) < xloc && yposA+random(-100, 100) < yloc) {       //objects will move towards the center.
        xloc += -125;                                 //the direction in which the objects will move is relative to their
        yloc += -125;                                 //current position in the canvas.
      } else if (xposA+random(-100, 100) > xloc && yposA+random(-100, 100) < yloc) {
        xloc += 125;
        yloc += -125;
      } else if (xposA+random(-100, 100) < xloc && yposA+random(-100, 100) > yloc) {
        xloc += -125;
        yloc += 125;
      } else if (xposA+random(-100, 100) > xloc && yposA+random(-100, 100) > yloc) {
        xloc += 125;
        yloc += 125;
      }
    } else if (destAirport.equals("LHR") || destAirport.equals("CDG") || destAirport.equals("IST") || destAirport.equals("FRA") || destAirport.equals("AMS")) {  // 
      // println(destAirport);
      // println("Hello");
      // println(continent);
      currentx = xloc;
      currenty = yloc;
      fill(c);
      rect(xloc, yloc, 5, 10);
      if (xposE+random(-100, 100) < xloc && yposE+random(-100, 100) < yloc) {       //objects will move towards the center.
        xloc += -100;                                 //the direction in which the objects will move is relative to their
        yloc += -100;                                 //current position in the canvas.
      } else if (xposE+random(-100, 100) > xloc && yposE+random(-100, 100) < yloc) {
        xloc += 100;
        yloc += -100;
      } else if (xposE+random(-100, 100) < xloc && yposE+random(-100, 100) > yloc) {
        xloc += -100;
        yloc += 100;
      } else if (xposE+random(-100, 100) > xloc && yposE+random(-100, 100) > yloc) {
        xloc += 100;
        yloc += 100;
      }
    } else if (destAirport.equals("MEX") || destAirport.equals("GRU") || destAirport.equals("CUN") || destAirport.equals("CGH") || destAirport.equals("BSB")) {  // 
      // println(destAirport);
      // println("Hello");
      // println(continent);
      currentx = xloc;
      currenty = yloc;
      fill(c);
      rect(xloc, yloc, 5, 10);
      if (xposS+random(-100, 100) < xloc && yposS+random(-100, 100) < yloc) {       //objects will move towards the center.
        xloc += -50;                                 //the direction in which the objects will move is relative to their
        yloc += -50;                                 //current position in the canvas.
      } else if (xposS+random(-100, 100) > xloc && yposS+random(-100, 100) < yloc) {
        xloc += 50;
        yloc += -50;
      } else if (xposS+random(-100, 100) < xloc && yposS+random(-100, 100) > yloc) {
        xloc += -50;
        yloc += 50;
      } else if (xposS+random(-100, 100) > xloc && yposS+random(-100, 100) > yloc) {
        xloc += 50;
        yloc += 50;
      }
    } else if (destAirport.equals("SYD") || destAirport.equals("MEL") || destAirport.equals("BNE") || destAirport.equals("PER") || destAirport.equals("ADL")) {  // 
      // println(destAirport);
      // println("Hello");
      // println(continent);
      currentx = xloc;
      currenty = yloc;
      fill(c);
      rect(xloc, yloc, 5, 10);
      if (xposO+random(-100, 100) < xloc && yposO+random(-100, 100) < yloc) {       //objects will move towards the center.
        xloc += -35;                                 //the direction in which the objects will move is relative to their
        yloc += -35;                                 //current position in the canvas.
      } else if (xposO+random(-100, 100) > xloc && yposO+random(-100, 100) < yloc) {
        xloc += 35;
        yloc += -35;
      } else if (xposO+random(-100, 100) < xloc && yposO+random(-100, 100) > yloc) {
        xloc += -35;
        yloc += 35;
      } else if (xposO+random(-100, 100) > xloc && yposO+random(-100, 100) > yloc) {
        xloc += 35;
        yloc += 35;
      }
    } else if (destAirport.equals("AKL") || destAirport.equals("CHC") || destAirport.equals("WLG") || destAirport.equals("ZQN") || destAirport.equals("DUD")) {  // 
      // println(destAirport);
      // println("Hello");
      // println(continent);
      currentx = xloc;
      currenty = yloc;
      fill(c);
      rect(xloc, yloc, 5, 10);
      if (xposZ+random(-100, 100) < xloc && yposZ+random(-100, 100) < yloc) {       //objects will move towards the center.
        xloc += -20;                                 //the direction in which the objects will move is relative to their
        yloc += -20;                                 //current position in the canvas.
      } else if (xposZ+random(-100, 100) > xloc && yposZ+random(-100, 100) < yloc) {
        xloc += 20;
        yloc += -20;
      } else if (xposZ+random(-100, 100) < xloc && yposZ+random(-100, 100) > yloc) {
        xloc += -20;
        yloc += 20;
      } else if (xposZ+random(-100, 100) > xloc && yposZ+random(-100, 100) > yloc) {
        xloc += 20;
        yloc += 20;
      }
    }
  }

  void displayRoute() {          //representing routes as rectangles
    if (mousePressed) {
      if (currentx != 0 && currenty !=0) {
        fill(240, 57, 100);
        rect(currentx, currenty, 5, 10);
        // print(currentx);
        if (centerX < currentx && centerY < currenty) {       //objects will move towards the center.
          currentx += -20;                                 //the direction in which the objects will move is relative to their
          currenty += -20;                           //current position in the canvas.
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
      this.moveToDest();
    }
  }

  //--I will be adding more methods related to motion here--
  void motionY() {
    if (mousePressed) {
      velocity = 0;
    } else {
      currentvel += 0.5;
      currentvel *= random(-2, 2);
    }
  }

  void motionX() {
    if (mousePressed) {
      currentx += 0;
    } else {
      xloc += currentspeed;
      // xloc = newX;
    }
  }

  void update() {
    if (mousePressed) {
      currenty += 0;
    } else {
      yloc += random(-currentvel, currentvel);
    }
    //yloc = newY;
  }

  void checkEdges() {        //makes sure rectangles don't move out of bound
    if (xloc > width) {
      xloc = width;
      xloc *= -1;
    } else if (xloc < 0) {
      xloc *=-1;
      xloc = 0;
    }

    if (yloc > height) {
      yloc = height;
      yloc *= -1;
    } else if (yloc < 0) {
      yloc *= -1;
      yloc = 0;
    }
  }
}