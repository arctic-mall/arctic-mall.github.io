var song = new Audio ("https://d3ctxlq1ktw2nl.cloudfront.net/production/2018-10-24/6004351-44100-2-a121c0c34208f.mp3");

PImage [] avatar = new PImage [23];

PImage back;

int img = 0;

void setup (){
  size (600, 400);
  song.currentTime = 211;
  song.volume = 0.0;
  song.play ();
  
  for (int i = 0; i < avatar.length; i ++){
    avatar [i] = loadImage ("/avatar2/" + str (i + 1) + ".png");
  }
  
  String url = "https://live.staticflickr.com/136/379609181_5edd930a04_z.jpg";
  back = loadImage (url, "jpg");
  back.resize (width, height);
  
  imageMode (CENTER, CENTER);
  hint(DISABLE_TEXTURE_MIPMAPS);
}
void draw (){
  background (40);
  if (song.volume < 0.04) song.volume += 0.0005;
  // image (back, 0, 0);
  if (frameCount % 5 == 0) img = (img + 1) % 23;
  image (avatar [img], width / 2, height / 2);
}
