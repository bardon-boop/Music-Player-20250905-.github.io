void loadImages() {
  imageRectX = screenWidth * 1/8;
  imageRectY = screenHeight * 1/8;
  imageRectWidth = screenWidth * 5/18;
  imageRectHeight = screenWidth * 5/18;
  //
  String upArrow = "../";
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
}

void WhichCover() {
  if (songList[songDetermined] == minim.loadFile("../music/Satin Sugar - Huma-Huma.mp3")) {
    int x = 0;
    printAlbumC();
  }
  if (songList[songDetermined] == minim.loadFile("../music/Eureka.mp3")) {
    int x = 1;
    printAlbumC();
  }
  if (songList[songDetermined] == minim.loadFile("../music/On The Flip - The Grey Room _ Density & Time.mp3")) {
    int x = 2;
    printAlbumC();
  }
}

void printAlbumC() {
  /*  float imageWidthAdapt = imageRectWidth;
   float imageHeightAdapt = ( imageWidthP[x] >= imageRectWidth ) ? imageWidthAdapt * imageRAspectRatio_LesserOne : imageWidthAdapt / imageRAspectRatio_LesserOne ; //Ternary Operator
   if (imageHeightAdapt>imageRectHeight) {
   println("Image does not fit within the parameters of the division frame, Program end ... Issue must be resolved... Image failed to appear");
   int timesRan = 0; //Local Variable to IF-Statement
   //** WHILE Loops can run indefinitely with an error if not controlled, ensure that as a while loop is performed, it approaches the satisfacation of its condition
   while ( imageHeightAdapt>imageRectHeight ) {
   println("Iterations of divsion correction program:", timesRan++);
   if ( timesRan < 10000 ) {
   // Checking Image Size
   imageWidthAdapt *= 0.81; // -= 1;
   imageHeightAdapt = imageWidthAdapt * imageRAspectRatio_LesserOne;
   println("Image size % decrease recorded:", imageWidthAdapt, imageHeightAdapt, imageHeightP[x]);
   } else {
   //ERROR: Infinite Loop
   println("WHILE condition is not being satisfied, resolve image correction program");
   exit(); //doesn't work, must force WHILE Stop
   imageHeightAdapt = imageRectHeight;
   } //End Check Infinite Loop
   }
   if (imageRectHeight < imageRectWidth) {
   imageHeightAdapt += imageRectHeight - imageHeightAdapt;
   } else {
   imageWidthAdapt += imageRectWidth - imageWidthAdapt;
   }
   }
   */
   }
   
