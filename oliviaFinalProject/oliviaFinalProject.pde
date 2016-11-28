JSONObject airportData;
String[] countries = new String[8107];

void setup() {
  size(1500, 1000);
  background(255);

  airportData = loadJSONObject("data/airports.json");
  countries = getCountry(airportData);

  for (int i=0; i<countries.length; i++) {   //display each value in array of countries
    //println(countries[i]);
    fill(0);
    //ellipse(20, 20, random(width), random(height));
    text(countries[i], random(width), random(height)); //temporarily print out countries as text for testing purposes
  }
}

String[] getCountry(JSONObject data) {    //get the country names of all airports in the data file
  String[] countryNames = new String[8107];
  JSONArray airports = data.getJSONArray("airports");
  int arraySize = airports.size();
  print(arraySize);

  for (int i=0; i< arraySize; i++) {
    JSONObject airport = airports.getJSONObject(i);
    countryNames[i] = airport.getString("FIELD4");
  }
  return countryNames;
}