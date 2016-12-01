JSONObject airportData;
JSONObject routeData;

String[] countries = new String[8107];
String[] originAirport = new String[67663];
String[] destAirport = new String[67663];

Routes[] routes = new Routes[8107];      //create an array of routes objects

void setup() {
  size(1500, 1000);

  airportData = loadJSONObject("data/airports.json");
  routeData = loadJSONObject("data/routes.json");
  countries = getCountry(airportData);              //store all the data in arrays
  originAirport = getOriginAirports(routeData);
  destAirport = getDestAirports(routeData);

  for (int i=0; i<countries.length; i++) {
    routes[i] = new Routes(countries[i], originAirport[i], destAirport[i], random(width), random(height));
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
     routes[i].displayAirport();
     routes[i].displayRoute();
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