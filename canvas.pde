var song = new Audio ("https://d3ctxlq1ktw2nl.cloudfront.net/production/2018-10-24/6004351-44100-2-a121c0c34208f.mp3");

PImage back; 

void setup (){
  size (600, 400);
  song.currentTime = 211;
  song.volume = 0.0;
  song.play ();
  
  String url = "http" + "://live.staticflickr.com/136/379609181_5edd930a04_z" + ".jpg";
  back = loadImage (url);
}
void draw (){
  background (back);
  if (song.volume < 0.3) song.volume += 0.005;
}
