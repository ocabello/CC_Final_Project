import org.gicentre.utils.gui.TextPopup;

JSONObject airportData;
JSONObject routeData;

String[] countries = new String[8107];
String[] originAirport = new String[67663];
String[] destAirport = new String[67663];

Routes[] routes = new Routes[8107];      //create an array of routes objects
Airports[] airports = new Airports[8107];      //create an array of airports objects

TextPopup[] label = new TextPopup[8107];

void setup() {
  size(1500, 1000);
  PFont font = createFont("serif", 12);

  airportData = loadJSONObject("data/airports.json");
  routeData = loadJSONObject("data/routes.json");
  countries = getCountry(airportData);              //store all the data in arrays
  originAirport = getOriginAirports(routeData);
  destAirport = getDestAirports(routeData);

  for (int i=0; i<countries.length; i++) {
    airports[i] = new Airports(countries[i], random(width), random(height));
    routes[i] = new Routes(countries[i], originAirport[i], destAirport[i], random(width), random(height));
    label[i] = new TextPopup(this, font, 50, 80);
    label[i].setTextSize(24);
    label[i].setInternalMargin(18,9);
    label[i].addText(countries[i]);
  }
    
  
}

void draw() {
  background(255);

  /*
  for (int i=0; i<countries.length; i++) {   //display each value in array of countries
   //println(countries[i]);
   fill(0);
   ellipse(random(width), random(height), 10, 10);
   //text(countries[i], random(width), random(height)); //temporarily print out countries as text for testing purposes
   }
   */
   
   for(int i=0; i<routes.length; i++){
     airports[i].displayAirport();
     routes[i].displayRoute();
     routes[i].motionY();
     routes[i].motionX();
     routes[i].update();
     routes[i].checkEdges();
     routes[i].unite();
     airports[i].unite();

    // need to figure out why the labels aren't displaying
    
    // label[i].draw();
    // label[i].setIsActive(!label[i].getIsActive());

   }

}



String[] getCountry(JSONObject data) {    //get the airport ids of all countries in the data file
  String[] airportID = new String[8107];
  JSONArray airports = data.getJSONArray("airports");
  int arraySize = airports.size();
  println(arraySize);

  for (int i=0; i< arraySize; i++) {
    JSONObject airport = airports.getJSONObject(i);
    airportID[i] = airport.getString("FIELD5");
  }
  return airportID;
}

String[] getOriginAirports(JSONObject data) {       //get the origin airport ids of all routes
  String[] origAirports = new String[67663];
  JSONArray routes = data.getJSONArray("routes");
  int arraySize = routes.size();
  println(arraySize);

  for (int i=0; i< arraySize; i++) {
    JSONObject origin = routes.getJSONObject(i);
    origAirports[i] = origin.getString("FIELD3");
  }
  return origAirports;
}

String[] getDestAirports(JSONObject data) {          //get the destination airport ids of all routes
  String[] destAirports = new String[67663];
  JSONArray routes = data.getJSONArray("routes");
  int arraySize = routes.size();
  println(arraySize);

  for (int i=0; i< arraySize; i++) {
    JSONObject destination = routes.getJSONObject(i);
    destAirports[i] = destination.getString("FIELD5");
  }
  return destAirports;
}