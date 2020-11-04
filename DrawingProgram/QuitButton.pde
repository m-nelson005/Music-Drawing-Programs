// Global Variables
String title= "X";
PFont quitButtonFont;
color purple2 = #2C08FF; //Ink
color purpleQuitButton = #FFDBFB;
color yellowQuitButton = #FEFFDB;

void quitButtonRect() {
  rect(width*19/20, height*0, width*1/20, height*1/20);
}
void quitButtonSetup() {
  quitButtonFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  quitButtonRect(); //Quit Button
}

void quitButtonDraw() {
  if (mouseX >= width*19/20  && mouseX <= width && mouseY >= height*0 && mouseY <= height*1/20) {
    fill(yellowQuitButton);
    quitButtonRect();
  } else {
    fill(purpleQuitButton);
    quitButtonRect();
  }

  fill(purple2); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  textFont(quitButtonFont, 20); //Change the number until it fits, largest font size
  text(title, width*19/20, height*0, width*1/20, height*1/20);
  fill(255); //Reset to white for rest of the program
}

void quitButtonMousePressed() {
  if (mouseX >= width*19/20  && mouseX <= width && mouseY >= height*0 && mouseY <= height*1/20) {
    exit();
  }
}
