class Airports {    //will handle all the effects/info from data related to airports
  color col;
  float xloc;
  float yloc;
  String airportID;
 
  Airports(String id, float x, float y){
    airportID = id;
    xloc = x;
    yloc = y;
    //col = color(50, 240, 32, 100);
    col = color(150, 100);
  }
  
  void displayAirport() {         //representing airports as circles
    fill(col);
    ellipse(xloc, yloc, 10, 10);
  }
  
  //--I will be adding more methods related to motion here--
  
}