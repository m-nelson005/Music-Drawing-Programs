void Picture1() {
  pic3 = loadImage("pizzaDrawing.png"); //Dimension: 800 Width, 606Height
  image3WidthRatio = 100.0/269.0; //must be decmals due to float, larger # for aspect ratio
  image3HeightRatio = 200.0/269.0; //must be decmals due to float, <1 for aspect ratio
  image3StartWidth = width*3/9;
  image3StartHeight = height*0.25/7;
  image3Width = width*image3WidthRatio; //Aspect Ratio
  image3Height = height*image3HeightRatio; //Aspect Ratio
  //
  image(pic3, image3StartWidth, image3StartHeight, image3Width, image3Height);
}

void Picture2() {
  pic4 = loadImage("flowerDrawing.png"); //Dimension: 800 Width, 606Height
  image4WidthRatio = 100.0/269.0; //must be decmals due to float, larger # for aspect ratio
  image4HeightRatio = 200.0/269.0; //must be decmals due to float, <1 for aspect ratio
  image4StartWidth = width*3/9;
  image4StartHeight = height*0.25/7;
  image4Width = width*image3WidthRatio; //Aspect Ratio
  image4Height = height*image3HeightRatio; //Aspect Ratio
  //
  image(pic4, image4StartWidth, image4StartHeight, image4Width, image4Height);
}
