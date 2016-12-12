class Routes extends Airports { //Routes class inherits from Airports class
  color c;                      // will be manipulating the shapes that display routes here
  String origAirport;
  String destAirport;
  float velocity;
  float speed;
  float currentx;
  float currenty;
  float currentvel;
  float currentspeed;

  Routes(String airport, String origin, String destination, float x, float y) {
    super(airport, x, y);                                                      //accessing constructor of Airports class
    origAirport = origin;
    destAirport = destination;
    c = color(random(234), random(50), random(100), 50);
    velocity = 0;
    speed = random(0.1, 4);
    currentx = xloc;
    currenty = yloc;
    currentvel = velocity;
    currentspeed = speed;
  }

  void displayRoute() {          //representing routes as rectangles
    if (mousePressed) {
      fill(240, 57, 100);
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
      rect(currentx, currenty, 5, 10);
    }
  }

  //--I will be adding more methods related to motion here--
  void motionY() {
    if (mousePressed){
      velocity = 0;
    }else{
    currentvel += 0.5;
    currentvel *= random(-2, 2);
    }
  }

  void motionX() {
    if (mousePressed){
      xloc += 0;
    } else{
    currentx += currentspeed;
    // xloc = newX;
    }
  }

  void update() {
    if (mousePressed){
      yloc += 0;
    } else {
    currenty += random(-currentvel, currentvel);
    }
    //yloc = newY;
  }

  void checkEdges() {        //makes sure rectangles don't move out of bound
    if (currentx > width) {
      currentx = width;
      currentx *= -1;
    } else if (currentx < 0) {
      currentx *=-1;
      currentx = 0;
    }

    if (currenty > height) {
      currenty = height;
      currenty *= -1;
    } else if (currenty < 0) {
      currenty *= -1;
      currenty = 0;
    }
  }
}