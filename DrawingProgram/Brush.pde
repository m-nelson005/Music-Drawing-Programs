void Brush() {
  fill(white);
  rect(rect1X, rect1Y, rect1Width, rect1Height);
  rect(rect12X, rect12Y, rect12Width, rect12Height);
  rect(rect13X, rect13Y, rect13Width, rect13Height);
  rect(rect14X, rect14Y, rect14Width, rect14Height);
  rect(rect15X, rect15Y, rect15Width, rect15Height);
  rect(rect16X, rect16Y, rect16Width, rect16Height);
  rect(rect17X, rect17Y, rect17Width, rect17Height);
  fill(black2);
  ellipse(ellipse3X, ellipse3Y, ellipse3Width, ellipse3Height);
  ellipse(ellipse4X, ellipse4Y, ellipse4Width, ellipse4Height);
  ellipse(ellipse5X, ellipse5Y, ellipse5Width, ellipse5Height);
  ellipse(ellipse6X, ellipse6Y, ellipse6Width, ellipse6Height);
  ellipse(ellipse7X, ellipse7Y, ellipse7Width, ellipse7Height);
  noFill();
  ellipse(ellipseX, ellipseY, ellipseWidth, ellipseHeight);
  ellipse(ellipse2X, ellipse2Y, ellipse2Width, ellipse2Height);
  fill(black);
  triangle(triX1, triY1, triX2, triY2, triX3, triY3);
  triangle(tri2X1, tri2Y1, tri2X2, tri2Y2, tri2X3, tri2Y3);
  noFill();
  noStroke();
  rect(rect18X, rect18Y, rect18Width, rect18Height);
  rect(rect19X, rect19Y, rect19Width, rect19Height);
  stroke(1);
  //
  titleFont = createFont ("Harrington", 55);
  rect(width*33.5/40, height*0.15/10, width*6/40, height*1/16);
  fill(black2); 
  textAlign (CENTER, CENTER); 
  textFont(titleFont, 30);
  text(title3, width*33.25/40, height*0.15/10, width*6/40, height*1/16);
  fill(255);
  //
  titleFont = createFont ("Harrington", 55);
  rect(width*33.5/40, height*7.35/10, width*6/40, height*4/16);
  fill(black2); 
  textAlign (CENTER, CENTER); 
  textFont(titleFont, 30);
  text(title5, width*33.5/40, height*7.35/10, width*6/40, height*4/16);
  fill(255);
}
