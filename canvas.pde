document.body.style.zoom="80%";

import javax.media.opengl.*;
import processing.opengl.*;

var song = new Audio ("https://d3ctxlq1ktw2nl.cloudfront.net/production/2018-10-24/6004351-44100-2-a121c0c34208f.mp3");

PImage [] avatar = new PImage [23];

PImage back, vignette;

int img = 0;

void setup (){
  size (1440, 600);
  song.currentTime = 211;
  song.volume = 0.0;
  song.play ();
  
  for (int i = 0; i < avatar.length; i ++){
    avatar [i] = loadImage ("/avatar/" + str (i + 1) + ".png");
  }
  
  String url = "https://live.staticflickr.com/136/379609181_5edd930a04_z.jpg";
  back = loadImage (url, "jpg");
  vignette = loadImage ("/images/side_vignette.png");
  back.resize (width, height);
  
  imageMode (CENTER, CENTER);
  
  noSmooth ();
}
void draw (){
  background (25);
  if (song.volume < 0.3) song.volume += 0.002;
  if (frameCount % 5 == 0) img = (img + 1) % 23;
  
  image (vignette, 0, 0);
  
  image (avatar [img], width / 2, height / 2, 192, 192);
}
