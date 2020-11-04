import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
int numberOfSongs = 6;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int currentSong = 0;
int loopNum = 1;
//
//GUI
color white = #FFFFFF;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;

void setup() {
  size(500, 600);
  minim = new Minim(this);
  song[0] = minim.loadFile("Yu-City Kamata - Dan Bodan.mp3");
  song[1] = minim.loadFile("Higher Octane - Vans in Japan.mp3");
  song[2] = minim.loadFile("Hop Hip - Kwon.mp3");
  song[3] = minim.loadFile("Rest Easy - Vans in Japan.mp3");
  song[4] = minim.loadFile("Sonic Pogo - Vans in Japan.mp3");
  song[5] = minim.loadFile("Buckeye Bonzai - Vans in Japan.mp3");
  //
  /*
  songMetaData[0] = song[0].getMetaData();
   songMetaData[1] = song[1].getMetaData();
   songMetaData[2] = song[2].getMetaData();
   */
  for (int i=0; i<song.length; i++) {
    songMetaData[i] = song[i].getMetaData();
  }//End Song MetaData
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
  println( " Track:", songMetaData[currentSong].track() );
  println( "Genre:", songMetaData[currentSong].genre() );
  println( "Encoded:", songMetaData[currentSong].encoded() ); //How a computer reads the file
  //
  //Variable Population
  playButtonX = width*1/2;
  playButtonY = height*1/2;
  playButtonWidth = width*1/5;
  playButtonHeight = height*1/5;
}

void draw () {
  background(white);
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
}

void keyPressed() {
  
  if (key == 'n' || key == 'N') { //Next Button to Console
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        println ("Current Song is the last song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - numberOfSongs;
        println ("Current Song is now the first song, ", "Number: " + currentSong); //For Debugging
      } else {
        currentSong += 1; // Equivalent code: currentSong = currentSong + 1
        println ("Current Song after the next or back button, but not the last song", "\tNumber: "+currentSong); //For Debugging
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        println ("Current Song is the last song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - numberOfSongs;
        println ("Current Song is now the first song or song, ", "Number: " + currentSong); //For DebuggingcurrentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong += 1; // Equivalent code: currentSong = currentSong + 1
        println ("Current Song after the next or back button, but not the last song, ", "Number: " + currentSong); //For Debugging
      }
    }
  }
  //
   if (key == 'p' || key == 'P') { //Next Button to Console
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        println ("Current Song is the first song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - 1;
        println ("Current Song is now the last song, ", "Number: " + currentSong); //For Debugging
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong - 1
        println ("Current Song after the next or back button, but not the first song", "\tNumber: " + currentSong); //For Debugging
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        println ("Current Song is the first song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - 1;
        println ("Current Song is now the last song, ", "Number: " + currentSong); //For DebuggingcurrentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong - 1
        println ("Current Song after the next or back button, but not the first song, ", "Number: "+currentSong); //For Debugging
      }
    }
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
  }// End Play-Pause
  //
  if (key == 's' || key == 'S') {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else {
      song[currentSong].rewind();
    }//End STOP Button
  }
  //
  if ( key == 'l' || key == 'L' ) song[currentSong].loop(loopNum);
  if (key == 'f' || key == 'F') song[currentSong].skip(5000);
  if (key == 'r' || key == 'R') song[currentSong].skip(-5000);
}

void mousePressed() {
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
