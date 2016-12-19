
JSONObject airportData;      
JSONObject routeData;

String[] countries = new String[8107];        //initialize arrays for all data sets
String[] continents = new String[8107];
String[] originAirport = new String[67663];
String[] destAirport = new String[67663];

Routes[] routes = new Routes[8107];      //create an array of routes objects
Airports[] airports = new Airports[8107];      //create an array of airports objects


void setup() {
  size(1000, 1000);

  airportData = loadJSONObject("data/airports.json");  //load json files
  routeData = loadJSONObject("data/routes.json");

  countries = getCountry(airportData);           //store all the data in arrays
  continents = getContinent(airportData);
  originAirport = getOriginAirports(routeData);
  destAirport = getDestAirports(routeData);

  for (int i=0; i<countries.length; i++) {
    //println(continents[7]);
    airports[i] = new Airports(countries[i],continents[i], random(width), random(height));
    routes[i] = new Routes(countries[i], continents[i], originAirport[i], destAirport[i], random(width), random(height));
    //println(countries[i]);
  }
  
}

void draw() {
  background(50);               //gray
  if (mousePressed){
    background(255, 215, 0);   //background changes to yellow after mouse is pressed
  }
  /*
  for (int i=0; i<countries.length; i++) {   //display each value in array of countries
   //println(countries[i]);
   fill(0);
   ellipse(random(width), random(height), 10, 10);
   //text(countries[i], random(width), random(height)); //temporarily print out countries as text for testing purposes
   }
   */
   
   for(int i=0; i<routes.length; i++){   //apply Airports and Routes methods to each airport/route
     airports[i].displayAirport();      
     //println(airports[2]);
     //println(continents[7]);
     routes[i].displayRoute();
     routes[i].motionY();
     routes[i].motionX();
     routes[i].update();
     routes[i].checkEdges();
     

   }

}


String[] getCountry(JSONObject data) {    //get the airport ids of all countries in the data file
  String[] airportID = new String[8107];
  JSONArray airports = data.getJSONArray("airports");
  int arraySize = airports.size();
  //println(arraySize);

  for (int i=0; i< arraySize; i++) {
    JSONObject airport = airports.getJSONObject(i);
    airportID[i] = airport.getString("FIELD5");
    //println(airportID[i]);
  }
  return airportID;
}

String[] getContinent(JSONObject data) {    //get the airport ids of all countries in the data file
  String[] continent = new String[8107];
  JSONArray airports = data.getJSONArray("airports");
  int arraySize = airports.size();
  //println(arraySize);

  for (int i=0; i< arraySize; i++) {
    JSONObject airport = airports.getJSONObject(i);
    continent[i] = airport.getString("FIELD11");
  }
  return continent;
}

String[] getOriginAirports(JSONObject data) {       //get the origin airport ids of all routes
  String[] origAirports = new String[67663];
  JSONArray routes = data.getJSONArray("routes");
  int arraySize = routes.size();
 // println(arraySize);

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
  //println(arraySize);

  for (int i=0; i< arraySize; i++) {
    JSONObject destination = routes.getJSONObject(i);
    destAirports[i] = destination.getString("FIELD5");
  }
  return destAirports;
}