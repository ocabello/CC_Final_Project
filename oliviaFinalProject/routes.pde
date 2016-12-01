class Routes extends Airports { //Routes class inherits from Airports class
  color c;                      // will be manipulating the shapes that display routes here
  String origAirport;
  String destAirport;
  
  Routes(String airport, String origin, String destination, float x, float y){
    super(airport, x, y);                                                      //accessing constructor of Airports class
    origAirport = origin;
    destAirport = destination;
    c = color(random(234), random(50), random(100), 50);
    
  }
  
  void displayRoute(){          //representing routes as squares
    fill(c);
    rect(xloc, yloc, 5, 10);
  }
  
  //--I will be adding more methods related to motion here--
  
}