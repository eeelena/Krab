/*
This is a sound file player. 
 */


import processing.sound.*;

SoundFile soundfile01, soundfile02, soundfile03, soundfile04;
void setup() {
  size(640, 360);
  background(255);
  setupSerial();

  //Load a soundfile
  soundfile01 = new SoundFile(this, "5314.mp3");
  soundfile02 = new SoundFile(this, "8488.mp3");
  soundfile03 = new SoundFile(this, "5291.mp3");
  soundfile04 = new SoundFile(this, "5314.mp3");
}      


void draw() {
    runSerial();
if (arduino.available() > 0){
    val =arduino.read (1) ;
    //(signal01) } else{  
    println("play music 01");
    soundfile01.play();
    soundfile02.stop();
    soundfile03.stop();
    soundfile04.stop();
  }
  
  if ( arduino.available() > 0){
  val = arduino.read(2);

    //(signal01) } else{  
    println("play music 02");
    soundfile02.play();
    soundfile01.stop();
    soundfile03.stop();
    soundfile04.stop();
  }
  
  if ( arduino.available() > 0){
   val =arduino.read(3) ;
{
    //(signal01) } else{  
    println("play music 03");
    soundfile03.play();
    soundfile01.stop();
    soundfile02.stop();
    soundfile04.stop();
  //}
  }