// Need G4P library
import g4p_controls.*;
// You can remove the PeasyCam import if you are not using
// the GViewPeasyCam control or the PeasyCam library.
import peasy.*;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.IOException;
import java.io.BufferedWriter;

GDropList dropList1, dropList2, dropList3, dropList4, dropList5, dropList6, dropList7, dropList8, dropList9, dropList10, dropList11; 
GLabel label1, label2, label3, label4, label5, label6, label7, label8, label9, label10, label11; 
GButton Install_Button, Random_Button, SaveImage_Button, LoadImage_Button; 

public void setup(){
  size(700, 600, FX2D);
  createGUI();
}

 public void draw(){
  PImage img = loadImage("image\\background.jpg");
  background(img);

  PImage lens1_img1 = loadImage("image\\LensFlares\\FireGlow\\"+dropList1.getSelectedText()+".png");
  image(lens1_img1, 180, 20);
  PImage lens1_img2 = loadImage("image\\LensFlares\\GeneralGlow\\"+dropList2.getSelectedText()+".png");
  image(lens1_img2, 180, 20);
  PImage lens1_img3 = loadImage("image\\LensFlares\\GlowCircle\\"+dropList3.getSelectedText()+".png");
  image(lens1_img3, 180, 20);
  PImage lens1_img4 = loadImage("image\\LensFlares\\LensFlareCenter\\"+dropList4.getSelectedText()+".png");
  image(lens1_img4, 180, 20);
  PImage lens1_img5 = loadImage("image\\LensFlares\\LensFlareRays\\"+dropList5.getSelectedText()+".png");
  image(lens1_img5, 180, 20);
  PImage lens1_img6 = loadImage("image\\LensFlares\\LensHexShape\\"+dropList6.getSelectedText()+".png");
  image(lens1_img6, 80, 400);
  PImage lens1_img7 = loadImage("image\\LensFlares\\LensHexShape\\"+dropList7.getSelectedText()+".png");
  image(lens1_img7, 200, 320);
  PImage lens1_img8 = loadImage("image\\LensFlares\\LensSoftReflectionRound\\"+dropList8.getSelectedText()+".png");
  image(lens1_img8, 180, 20);
  PImage lens1_img9 = loadImage("image\\LensFlares\\LensStreakSmudge\\"+dropList9.getSelectedText()+".png");
  image(lens1_img9, 180, 20);
  PImage lens1_img10 = loadImage("image\\LensFlares\\SpikeFlare\\"+dropList10.getSelectedText()+".png");
  image(lens1_img10, 180, 20);
  PImage lens1_img11 = loadImage("image\\LensFlares\\LensGlow\\"+dropList11.getSelectedText()+".png");
  image(lens1_img11, 180, 20);
}
