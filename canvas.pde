var song = new Audio ("https://d3ctxlq1ktw2nl.cloudfront.net/production/2018-10-24/6004351-44100-2-a121c0c34208f.mp3");

void setup (){
  size (600, 400);
  song.currentTime = 1145;
  song.volume = 0.3;
  song.play ();
}
void draw (){
  background (255, 0, 0);
}
