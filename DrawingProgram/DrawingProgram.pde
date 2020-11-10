import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
int numberOfSongs = 1;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int currentSong = 0;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float clearDrawingSurfaceX, clearDrawingSurfaceY, clearDrawingSurfaceWidth, clearDrawingSurfaceHeight;
float rectX, rectY, rectWidth, rectHeight;
float rect1X, rect1Y, rect1Width, rect1Height;
float rect2X, rect2Y, rect2Width, rect2Height;
float rect3X, rect3Y, rect3Width, rect3Height;
float rect4X, rect4Y, rect4Width, rect4Height;
float rect5X, rect5Y, rect5Width, rect5Height;
float rect6X, rect6Y, rect6Width, rect6Height;
float rect7X, rect7Y, rect7Width, rect7Height;
float rect8X, rect8Y, rect8Width, rect8Height;
float rect9X, rect9Y, rect9Width, rect9Height;
float rect10X, rect10Y, rect10Width, rect10Height;
float rect11X, rect11Y, rect11Width, rect11Height;
float rect12X, rect12Y, rect12Width, rect12Height;
float rect13X, rect13Y, rect13Width, rect13Height;
float rect14X, rect14Y, rect14Width, rect14Height;
float rect15X, rect15Y, rect15Width, rect15Height;
float rect16X, rect16Y, rect16Width, rect16Height;
float rect17X, rect17Y, rect17Width, rect17Height;
float rect18X, rect18Y, rect18Width, rect18Height;
float rect19X, rect19Y, rect19Width, rect19Height;
float rect20X, rect20Y, rect20Width, rect20Height;
float rect21X, rect21Y, rect21Width, rect21Height;
float rect22X, rect22Y, rect22Width, rect22Height;
float rect23X, rect23Y, rect23Width, rect23Height;
float ellipseX, ellipseY, ellipseWidth, ellipseHeight;
float ellipse2X, ellipse2Y, ellipse2Width, ellipse2Height;
float ellipse3X, ellipse3Y, ellipse3Width, ellipse3Height;
float ellipse4X, ellipse4Y, ellipse4Width, ellipse4Height;
float ellipse5X, ellipse5Y, ellipse5Width, ellipse5Height;
float ellipse6X, ellipse6Y, ellipse6Width, ellipse6Height;
float ellipse7X, ellipse7Y, ellipse7Width, ellipse7Height;
float ellipse8X, ellipse8Y, ellipse8Width, ellipse8Height;
float drawingDiameter;
float triX1, triY1, triX2, triY2, triX3, triY3;
Boolean draw=false;
Boolean Picture1 = false, Picture2 = false;
color ink, black = #000000;
color red = #FF002F;
color orange = #FF8400;
color yellow = #FFF300;
color green = #2DFF00;
color cyan = #07F7D5;
color blue = #001BFF;
color purple = #A900FF;
color black2 = #000000;
color white = #FFFFFF;
String title2= "Color";
String title3= "Brush";
String title4= "Images";
String title5= "Clear Canvas";
String title6= "Clear Image";
PFont titleFont;
PImage pic;
PImage pic2;
PImage pic3;
PImage pic4;
float imageStartWidth, imageStartHeight, imageWidth, imageHeight;
float imageWidthRatio;
float imageHeightRatio;
float image2StartWidth, image2StartHeight, image2Width, image2Height;
float image2WidthRatio;
float image2HeightRatio;
float image3StartWidth, image3StartHeight, image3Width, image3Height;
float image3WidthRatio;
float image3HeightRatio;
float image4StartWidth, image4StartHeight, image4Width, image4Height;
float image4WidthRatio;
float image4HeightRatio;

float playButtonX, playButtonY, playButtonWidth, playButtonHeight;

void setup() {
  size(1000, 700);
  quitButtonSetup();
  Population();
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //
  pic = loadImage("pizzaDrawing.png"); //Dimension: 800 Width, 606Height
  imageWidthRatio = 8.0/106.0; //must be decmals due to float, larger # for aspect ratio
  imageHeightRatio = 16.0/106.0; //must be decmals due to float, <1 for aspect ratio
  imageStartWidth = width*3.35/9;
  imageStartHeight = height*5.75/7;
  imageWidth = width*imageWidthRatio; //Aspect Ratio
  imageHeight = height*imageHeightRatio; //Aspect Ratio
  //
  pic2 = loadImage("flowerDrawing.png"); //Dimension: 800 Width, 606Height
  image2WidthRatio = 8.0/106.0; //must be decmals due to float, larger # for aspect ratio
  image2HeightRatio = 16.0/106.0; //must be decmals due to float, <1 for aspect ratio
  image2StartWidth = width*4.8/9;
  image2StartHeight = height*5.75/7;
  image2Width = width*imageWidthRatio; //Aspect Ratio
  image2Height = height*imageHeightRatio; //Aspect Ratio
  //
  println("Start of Console");
  titleFont = createFont ("Harrington", 55);
  //
  minim = new Minim(this);
  song[0] = minim.loadFile("Yu-City Kamata - Dan Bodan.mp3");
  //
  for (int i=0; i<song.length; i++) {
    songMetaData[i] = song[i].getMetaData();
  }
  //
  println("Start of Console");
  println("Click the Canvas to Finish Starting this App");
  println("Press P to Play and Pause");
  println("Press S to Stop");
  println("Press L to loop the song");
  println("Press F to fast forward");
  println("Press R to fast rewind");
  //Verifying Meta Data
  //Always Available
  println("\n\nVerifying MetaData");
  println( "File Name:", songMetaData[currentSong].fileName() );
  println( "Song Length (in milliseconds):", songMetaData[currentSong].length() );
  println( "Song Length (in seconds):", songMetaData[currentSong].length()/1000 );
  println( "Song Length (in minutes & seconds):", (songMetaData[currentSong].length()/1000)/60, "minutes", (songMetaData[currentSong].length()/1000)-((songMetaData[currentSong].length()/1000)/60 * 60), "seconds");
  println( "Title:", songMetaData[currentSong].title() );
  println( "Author:", songMetaData[currentSong].author() );
  println( "Composer:", songMetaData[currentSong].composer() );
  println( "Orchestra:", songMetaData[currentSong].orchestra() );
  println( "Album:", songMetaData[currentSong].album() );
  println( "Disc:", songMetaData[currentSong].disc() );
  println( "Publisher:", songMetaData[currentSong].publisher() );
  println( "Date Release:", songMetaData[currentSong].date() );
  println( "Copyright:", songMetaData[currentSong].copyright() );
  println( "Comment:", songMetaData[currentSong].comment() );
  println( "Lyrics:", songMetaData[currentSong].lyrics() );
  println( "Track:", songMetaData[currentSong].track() );
  println( "Genre:", songMetaData[currentSong].genre() );
  println( "Encoded:", songMetaData[currentSong].encoded() ); //How a computer reads the file
  
}

void draw() {

  //
  if (draw == true) {
    fill(ink);
    noStroke();
    ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
    stroke(1);
  }
  //
  fill(white);
  Images();
  image(pic, imageStartWidth, imageStartHeight, imageWidth, imageHeight);
  image(pic2, image2StartWidth, image2StartHeight, image2Width, image2Height);
  Color();
  Brush();
  quitButtonDraw();
  //
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  fill(black);
  triangle(triX1, triY1, triX2, triY2, triX3, triY3);
  rect(rect22X, rect22Y, rect22Width, rect22Height);
  rect(rect23X, rect23Y, rect23Width, rect23Height);
  //Picture1();
  //
}


void mousePressed() {
  quitButtonMousePressed();
  //
  if (mouseX> drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
  }
  //
  if (mouseX> rect2X && mouseX<rect2X+rect2Width && mouseY>rect2Y && mouseY<rect2Y+rect2Height) {
    ink = red;
  }
  //
  if (mouseX> rect3X && mouseX<rect3X+rect3Width && mouseY>rect3Y && mouseY<rect3Y+rect3Height) {
    ink = orange;
  }
  //
  if (mouseX> rect4X && mouseX<rect4X+rect4Width && mouseY>rect4Y && mouseY<rect4Y+rect4Height) {
    ink = yellow;
  }
  //
  if (mouseX> rect5X && mouseX<rect5X+rect5Width && mouseY>rect5Y && mouseY<rect5Y+rect5Height) {
    ink = green;
  }
  //
  if (mouseX> rect6X && mouseX<rect6X+rect6Width && mouseY>rect6Y && mouseY<rect6Y+rect6Height) {
    ink = cyan;
  }
  //
  if (mouseX> rect7X && mouseX<rect7X+rect7Width && mouseY>rect7Y && mouseY<rect7Y+rect7Height) {
    ink = blue;
  }
  //
  if (mouseX> rect8X && mouseX<rect8X+rect8Width && mouseY>rect8Y && mouseY<rect8Y+rect8Height) {
    ink = purple;
  }
  //
  if (mouseX> rect9X && mouseX<rect9X+rect9Width && mouseY>rect9Y && mouseY<rect9Y+rect9Height) {
    ink = black;
  }
  //
  if (mouseX> rect10X && mouseX<rect10X+rect10Width && mouseY>rect10Y && mouseY<rect10Y+rect10Height) {
    ink = white;
  }

  //

  if (mouseX>rect17X && mouseX<rect17X+rect17Width && mouseY>rect17Y && mouseY<rect17Y+rect17Height) {
    drawingDiameter = width*1.4/100;
  }
  //
  if (mouseX>rect12X && mouseX<rect12X+rect12Width && mouseY>rect12Y && mouseY<rect12Y+rect12Height) {
    drawingDiameter = width*3/100;
  }
  //
  if (mouseX>rect13X && mouseX<rect13X+rect13Width && mouseY>rect13Y && mouseY<rect13Y+rect13Height) {
    drawingDiameter = width*5.4/100;
  }
  //
  if (mouseX>rect14X && mouseX<rect14X+rect14Width && mouseY>rect14Y && mouseY<rect14Y+rect14Height) {
    drawingDiameter = width*7.4/100;
  }
  //
  if (mouseX>rect15X && mouseX<rect15X+rect15Width && mouseY>rect15Y && mouseY<rect15Y+rect15Height) {
    drawingDiameter = width*10.4/100;

    //

    
    //
  }

  //

  if (mouseX>rect18X && mouseX<rect18X+rect18Width && mouseY>rect18Y && mouseY<rect18Y+rect18Height) {
    rect(clearDrawingSurfaceX, clearDrawingSurfaceY, clearDrawingSurfaceWidth, clearDrawingSurfaceHeight);
    Picture1();
  }
  //
  if (mouseX>rect19X && mouseX<rect19X+rect19Width && mouseY>rect19Y && mouseY<rect19Y+rect19Height) {
    rect(clearDrawingSurfaceX, clearDrawingSurfaceY, clearDrawingSurfaceWidth, clearDrawingSurfaceHeight);
    Picture2();
  }
  //
  if (mouseX>rect21X && mouseX<rect21X+rect21Width && mouseY>rect21Y && mouseY<rect21Y+rect21Height) {
    rect(clearDrawingSurfaceX, clearDrawingSurfaceY, clearDrawingSurfaceWidth, clearDrawingSurfaceHeight);
  }
  //
  if (mouseX>rect16X && mouseX<rect16X+rect16Width && mouseY>rect16Y && mouseY<rect16Y+rect16Height) {
    rect(clearDrawingSurfaceX, clearDrawingSurfaceY, clearDrawingSurfaceWidth, clearDrawingSurfaceHeight);
  }
  //
   if (mouseX>playButtonX && mouseX<playButtonX+playButtonWidth && mouseY>playButtonY && mouseY<playButtonY+playButtonHeight ) {
    if ( song[currentSong].isPlaying() ) {
      song[0].pause();
    } else if (song[currentSong].position() == song[currentSong].length()) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
}

void keyPressed() {
  if (key == 'q' || key == 'Q') { 
    exit();
  }
  //
  if (key == ' ' || key == ' ') {
    if ( song[currentSong].isPlaying() ) {
      song[0].pause();
    } else if (song[currentSong].position() == song[currentSong].length()) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
}
