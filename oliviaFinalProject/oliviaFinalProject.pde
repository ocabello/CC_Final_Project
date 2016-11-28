JSONObject airportData;
JSONObject routeData;

String[] countries = new String[8107];
String[] originAirport = new String[67663];
String[] destAirport = new String[67663];

void setup() {
  size(1500, 1000);
  background(255);

  airportData = loadJSONObject("data/airports.json");
  routeData = loadJSONObject("data/routes.json");
  countries = getCountry(airportData);
  originAirport = getOriginAirports(routeData);

  for (int i=0; i<countries.length; i++) {   //display each value in array of countries
    //println(countries[i]);
    fill(0);
    ellipse(random(width), random(height), 10, 10);
    //text(countries[i], random(width), random(height)); //temporarily print out countries as text for testing purposes
  }
}

String[] getCountry(JSONObject data) {    //get the country names of all airports in the data file
  String[] countryNames = new String[8107];
  JSONArray airports = data.getJSONArray("airports");
  int arraySize = airports.size();
  println(arraySize);

  for (int i=0; i< arraySize; i++) {
    JSONObject airport = airports.getJSONObject(i);
    countryNames[i] = airport.getString("FIELD4");
  }
  return countryNames;
}

String[] getOriginAirports(JSONObject data){
  String[] origAirports = new String[67663];
  JSONArray routes = data.getJSONArray("routes");
  int arraySize = routes.size();
  println(arraySize);
  
  for (int i=0; i< arraySize; i++){
    JSONObject origin = routes.getJSONObject(i);
    origAirports[i] = origin.getString("FIELD3");
  }
  return origAirports;
}

String[] getDestAirports(JSONObject data){
  String[] destAirports = new String[67663];
  JSONArray routes = data.getJSONArray("routes");
  int arraySize = routes.size();
  println(arraySize);
  
  for (int i=0; i< arraySize; i++){
    JSONObject destination = routes.getJSONObject(i);
    destAirports[i] = destination.getString("FIELD5");
  }
  return destAirports;
}