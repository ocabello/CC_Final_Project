class Routes extends Airports { //Routes class inherits from Airports class
  color c;                      // will be manipulating the shapes that display routes here
  String origAirport;
  String destAirport;
  float velocity;
  float speed;
  //float newX;
  //float newY;

  Routes(String airport, String origin, String destination, float x, float y) {
    super(airport, x, y);                                                      //accessing constructor of Airports class
    origAirport = origin;
    destAirport = destination;
    c = color(random(234), random(50), random(100), 50);
    velocity = 0;
    speed = random(0.1, 4);
    //newX = xloc;
    //newY = yloc;
  }

  void displayRoute() {          //representing routes as rectangles
    if (mousePressed) {
      fill(c);
      rect(xloc, yloc, 5, 10);
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
      fill(c);
      rect(xloc, yloc, 5, 10);
    }
  }

  //--I will be adding more methods related to motion here--
  void motionY() {
    if (mousePressed){
      velocity = 0;
    }else{
    velocity += 0.5;
    velocity *= random(-2, 2);
    }
  }

  void motionX() {
    if (mousePressed){
      xloc += 0;
    } else{
    xloc += speed;
    // xloc = newX;
    }
  }

  void update() {
    if (mousePressed){
      yloc += 0;
    } else {
    yloc += random(-velocity, velocity);
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