var song = new Audio ("https://radio.plaza.one/mp3_96.mp3");

void setup (){
  size (600, 400);
  song.currentTime = 1121;
  song.volume = 0.3;
  song.play ();
}
void draw (){
  background (255, 0, 0);
}
