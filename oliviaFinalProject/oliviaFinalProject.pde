import org.gicentre.utils.gui.TextPopup;
//import java.util.Random;

JSONObject airportData;
JSONObject routeData;

String[] countries = new String[8107];
String[] continents = new String[8107];
String[] originAirport = new String[67663];
String[] destAirport = new String[67663];

Routes[] routes = new Routes[8107];      //create an array of routes objects
Airports[] airports = new Airports[8107];      //create an array of airports objects

private TextPopup[] label = new TextPopup[8107];
//private TextPopup text;



void setup() {
  size(1000, 1000);

  PFont font = createFont("serif", 12);

  airportData = loadJSONObject("data/airports.json");
  routeData = loadJSONObject("data/routes.json");
 /* thread("requestAirportData");
  thread("requestRouteData");
  for(int i=0; i<countries.length; i++) {
  countries[i] = getCountry(airportData);              //store all the data in arrays
  } */
  countries = getCountry(airportData);  //store all the data in arrays
  continents = getContinent(airportData);
  originAirport = getOriginAirports(routeData);
  destAirport = getDestAirports(routeData);
/*
  text = new TextPopup(this,font,50,80);
  text.setTextSize(24);
  text.setInternalMargin(18,9);
  text.addText("An example title",28);
*/

  for (int i=0; i<countries.length; i++) {
    //println(continents[7]);
    airports[i] = new Airports(countries[i],continents[i], random(width), random(height));
    routes[i] = new Routes(countries[i], continents[i], originAirport[i], destAirport[i], random(width), random(height));
    //println(countries[i]);

   // label[i] = new TextPopup(this, font, 50, 80);
    //label[i].setTextSize(24);
   // label[i].setInternalMargin(18,9);
   // label[i].addText("Hello World");
    //println(label[i]);
  }
    
  
}

void draw() {
  background(50);
  if (mousePressed){
    background(255, 215, 0);
  }
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
     //println(airports[2]);
     //println(continents[7]);
     routes[i].displayRoute();
     routes[i].motionY();
     routes[i].motionX();
     routes[i].update();
     routes[i].checkEdges();
     
    // need to figure out why the labels aren't displaying
     // text.draw();

     //label[i].draw();
    // label[i].setIsActive(!label[i].getIsActive());
    //println(label[i]);

   }

}
/*
void requestAirportData(){
    airportData = loadJSONObject("data/airports.json");
}

void requestRouteData(){
    routeData = loadJSONObject("data/routes.json");
}
*/

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
  //println(arraySize);

  for (int i=0; i< arraySize; i++) {
    JSONObject destination = routes.getJSONObject(i);
    destAirports[i] = destination.getString("FIELD5");
  }
  return destAirports;
}

/*
void keyPressed()
{ 
   // for (int i=0; i<countries.length; i++) {

  if ((key == 'h') || (key == 'H'))
  {
    text.setIsActive(!text.getIsActive());
  }
  
  if (text.getIsActive())
  {
    if (key== CODED)
    {
      int margin = text.getInternalMargin().width;
      int border = text.getExternalMargin().width;
    
      if (keyCode == UP)
      {
        margin++;
      }
      else if (keyCode == DOWN)
      {
        margin--;
      }
      text.setInternalMargin(margin,margin/2);  
    
      if (keyCode == LEFT)
      {
        border-=4;
      }
      else if (keyCode == RIGHT)
      {
        border+=4;
      }
      text.setExternalMargin(border,border);  
    }
  }
  loop();
   // }
} 
*/