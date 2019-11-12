import processing.pdf.*;



void setup(){
  background(0);
  //size(10000, 6000, PDF, "planet.pdf");
  size(1000,600);
  JSONArray j = loadJSONArray("planet.json"); 
  for(int i = 0; i < j.size(); i++){
      println(j.getJSONObject(i).getString("planet"));
      float diam = (j.getJSONObject(i).getFloat("diameter") / 10000)+3;
      ellipse(map(j.getJSONObject(i).getFloat("distanceFromSun"),0, 6000, 0, width), height/2, diam, diam);
      
  }
  
  //exit();
}
