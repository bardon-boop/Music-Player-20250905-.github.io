void loadImages() {
  imageRectX = screenWidth * 1/8;
  imageRectY = screenHeight * 1/8;
  imageRectWidth = screenWidth * 5/18;
  imageRectHeight = screenWidth * 5/18;
  //
  String upArrow = "../../";
  String imageDestination = "Picture Dependancy Folder/Images/";
  String[] imageName = new String[imageCount];
  imageName[0] = "Lofi";
  imageName[1] = "Mysterious";
  imageName[2] = "RapStyle";
  String[] fileExtDes = new String[imageCount];
  fileExtDes[0] = ".jpg";
  fileExtDes[1] = ".jpg";
  fileExtDes[2] = ".png";
  String[] imageLocation = new String[imageCount];
  for (int x = 0; x < imageCount; x++) {
    imageLocation[x] = upArrow + imageDestination + imageName[x] + fileExtDes[x];
  }
  //println("Rainbow Pathway: " + imagePathwayR);
  //Image Loading & Aspect Ratio
  for (int i = 0; i < imageCount; i++) {
    imageSelected[i] = loadImage(imageLocation[i]);
    if (imageSelected[i] == null) {
      println("Null Pointer Exception ... Program failed to operate due to invalid pathway ... Resolve issue immediately");
      quitProgram();
    }
  }
  hardImageStatsW[0] = 1280;
  hardImageStatsH[0] = 1280;
  hardImageStatsW[1] = 1024;
  hardImageStatsH[1] = 682;
  hardImageStatsW[2] = 1280;
  hardImageStatsH[2] = 808;
  determineAR();
}

void coverLogic() {
  if (songList[songDetermined] == referenceSong[0]) {
    imageIndex = 2;
  }
  if (songList[songDetermined] == referenceSong[1]) {
    imageIndex = 1;
  }
  if (songList[songDetermined] == referenceSong[2]) {
    imageIndex = 0;
  }
}

void determineAR() {
  for (int x = 0; x < imageCount; x++) {
    imageWidthAdapt[x] = imageRectWidth;
    float imageRAspectRatio_LesserOne = ( hardImageStatsW[x] >= hardImageStatsH[x] ) ? float(hardImageStatsH[x])/float(hardImageStatsW[x]) : float(hardImageStatsW[x])/float(hardImageStatsH[x]) ; //Ternary Operator
    imageHeightAdapt[x] = ( hardImageStatsW[x] >= imageRectWidth ) ? imageWidthAdapt[x] * imageRAspectRatio_LesserOne : imageWidthAdapt[x] / imageRAspectRatio_LesserOne ; //Ternary Operator
    if (imageHeightAdapt[x]>imageRectHeight) {
      //println("Image does not fit within the parameters of the division frame, Program end ... Issue must be resolved... Image failed to appear");
      int timesRan = 0; //Local Variable to IF-Statement
      //** WHILE Loops can run indefinitely with an error if not controlled, ensure that as a while loop is performed, it approaches the satisfacation of its condition
      while ( imageHeightAdapt[x]>imageRectHeight) {
        println("Iterations of divsion correction program:", timesRan++);
        if ( timesRan < 10000 ) {
          // Checking Image Size
          imageWidthAdapt[x] *= 0.81; // -= 1;
          imageHeightAdapt[x] = imageWidthAdapt[x] * imageRAspectRatio_LesserOne;
          //println("Image size % decrease recorded:", imageWidthAdapt[x], imageHeightAdapt[x], hardImageStatsH[x]);
        } else {
          //ERROR: Infinite Loop
          println("WHILE condition is not being satisfied, resolve image correction program");
          exit(); //doesn't work, must force WHILE Stop
          imageHeightAdapt[x] = imageRectHeight;
        } //End Check Infinite Loop
      }
      if (imageRectHeight < imageRectWidth) {
        imageHeightAdapt[x] += imageRectHeight - imageHeightAdapt[x];
      } else {
        imageWidthAdapt[x] += imageRectWidth - imageWidthAdapt[x];
      }
    }
    centerAdjustment[x] = (imageRectHeight-imageHeightAdapt[x] > 0) ? float(1)/float(2) * (imageRectHeight-imageHeightAdapt[x]) : float(1)/float(2) * (imageRectWidth-imageWidthAdapt[x]);
    //println(imageWidthAdapt[x], imageHeightAdapt[x]);
  }
}

void printAlbumC() {
  rect(imageRectX, imageRectY, imageRectWidth, imageRectHeight);
  if (imageRectHeight-imageHeightAdapt[imageIndex] > 0) {
    image( imageSelected[imageIndex], imageRectX, imageRectY + centerAdjustment[imageIndex], imageWidthAdapt[imageIndex], imageHeightAdapt[imageIndex]); //For centring on the y-axis
  } else {
    image( imageSelected[imageIndex], imageRectX  + centerAdjustment[imageIndex], imageRectY, imageWidthAdapt[imageIndex], imageHeightAdapt[imageIndex]); //For centring on the x-axis
  }
}
