void drawMainScreen()
{
  //Textlabel myTextlabelA;

  //myTextlabelA = introPage.addTextlabel("label")
  //                  .setText("Hungry or Stuffed?")
  //                  .setPosition(100,50)
  //                  .setColorValue(0xffffff00)
  //                  .setFont(createFont("Georgia",20))
  //                  ;
  background(#ED8F12);
  textSize(width/10);
  fill(0);
  text("Hungry or Stuffed?", width/20, height/3);
  
  fill(#915300);
  rect(width-width/10-width/3,height-height/3,width/3,height/5);
  fill(#915300);
  rect(width/10,height-height/3,width/3,height/5);
  
   textSize(width/15);
  fill(#FFC16F);
  text("search",width/6,height-height/3,width,height);
  
  fill(#FFC16F);
  text("eat",width-width/10-width/4.5,height-height/3,width,height);
  //rect(20,20,width,height);

  if (mousePressed&&!ready) {
    //this is hungry
       if (mouseX < width/2) {
          //run function
          cp5.show();
          println("showing cp5");
          sendLocation("boogers","candy");
          rect(0, 0, width/2, height); // Left
          //this is stuffed
        } else {
          //run function
          rect(width/2, 0, width/2, height); // Right
        }
        ready = true;
  }
}