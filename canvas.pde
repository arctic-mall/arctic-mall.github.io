var song = new Audio ("https://d3ctxlq1ktw2nl.cloudfront.net/production/2018-10-24/6004351-44100-2-a121c0c34208f.mp3");

PImage back; 

void setup (){
  size (600, 400);
  song.currentTime = 211;
  song.volume = 0.0;
  song.play ();
  
  String url = "https://live.staticflickr.com/136/379609181_5edd930a04_z.jpg";
  back = loadImage (url, "jpg");
  back.resize (width, height);
}
void draw (){
  background (0);
  if (song.volume < 0.1) song.volume += 0.002;
  image (back, 0, 0);
}
