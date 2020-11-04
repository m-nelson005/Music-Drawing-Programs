void Images() {
  rect(rect20X, rect20Y, rect20Width, rect20Height);
  rect(rect18X, rect18Y, rect18Width, rect18Height);
  rect(rect19X, rect19Y, rect19Width, rect19Height);
  rect(rect21X, rect21Y, rect21Width, rect21Height);

  //
  titleFont = createFont ("Harrington", 55);
  rect(width*7.25/40, height*8.6/10, width*6/40, height*1/16);
  fill(black2); 
  textAlign (CENTER, CENTER); 
  textFont(titleFont, 30);
  text(title4, width*7.25/40, height*8.6/10, width*6/40, height*1/16);
  fill(255);
  //
  titleFont = createFont ("Harrington", 55);
  rect(width*26.5/40, height*8.1/10, width*6/40, height*7/40);
  fill(black2); 
  textAlign (CENTER, CENTER); 
  textFont(titleFont, 30);
  text(title6, width*26.5/40, height*8.1/10, width*6/40, height*7/40);
  fill(255);
}
