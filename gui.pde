
public void button1_click1(GButton source, GEvent event) { 
  
  println("Install - GButton >> GEvent." + event + " @ " + millis());
  selectFolder("Select a folder to process:", "folderSelected");
  
} 

public void button1_click2(GButton source, GEvent event) { 
  println("Install - GButton >> GEvent." + event + " @ " + millis());
  dropList1.setItems(loadStrings("list_968977"), int (random(0, 7)));
  dropList2.setItems(loadStrings("list_323743"), int (random(0, 7)));
  dropList3.setItems(loadStrings("list_270981"), int (random(0, 19)));
  dropList4.setItems(loadStrings("list_725679"), int (random(0, 20)));
  dropList5.setItems(loadStrings("list_781282"), int (random(0, 12)));
  dropList6.setItems(loadStrings("list_361232"), int (random(0, 63)));
  dropList7.setItems(loadStrings("list_823039"), int (random(0, 63)));
  dropList8.setItems(loadStrings("list_645464"), int (random(0, 8)));
  dropList9.setItems(loadStrings("list_724033"), 1);
  dropList10.setItems(loadStrings("list_984932"), int (random(0, 7)));
  dropList11.setItems(loadStrings("list_639218"), int (random(0, 27)));
}

public void button1_click3(GButton source, GEvent event) { 
  println("Install - GButton >> GEvent." + event + " @ " + millis());
  save("preset"+month()+day()+year()+hour()+minute()+second()+".png");
  PrintWriter output = createWriter("preset"+month()+day()+year()+hour()+minute()+second()+".txt");
  
  output.println(dropList1.getSelectedIndex());
  output.println(dropList2.getSelectedIndex());
  output.println(dropList3.getSelectedIndex());
  output.println(dropList4.getSelectedIndex());
  output.println(dropList5.getSelectedIndex());
  output.println(dropList6.getSelectedIndex());
  output.println(dropList7.getSelectedIndex());
  output.println(dropList8.getSelectedIndex());
  output.println(dropList9.getSelectedIndex());
  output.println(dropList10.getSelectedIndex());
  output.println(dropList11.getSelectedIndex());
  output.flush();
  output.close();
} 

public void button1_click4(GButton source, GEvent event) { 
  println("Install - GButton >> GEvent." + event + " @ " + millis());
  selectInput("Select a file with preset:", "fileSelected");
}

void fileSelected(File select) {

    println("User selected " + select);
    String[] preset_read = loadStrings(select);
    println("There are " + preset_read.length + " lines.");
    printArray(preset_read);
    
    dropList1.setItems(loadStrings("list_968977"), int (preset_read[0]));
    dropList2.setItems(loadStrings("list_323743"), int (preset_read[1]));
    dropList3.setItems(loadStrings("list_270981"), int (preset_read[2]));
    dropList4.setItems(loadStrings("list_725679"), int (preset_read[3]));
    dropList5.setItems(loadStrings("list_781282"), int (preset_read[4]));
    dropList6.setItems(loadStrings("list_361232"), int (preset_read[5]));
    dropList7.setItems(loadStrings("list_823039"), int (preset_read[6]));
    dropList8.setItems(loadStrings("list_645464"), int (preset_read[7]));
    dropList9.setItems(loadStrings("list_724033"), int (preset_read[8]));
    dropList10.setItems(loadStrings("list_984932"), int (preset_read[9]));
    dropList11.setItems(loadStrings("list_639218"), int (preset_read[10]));
  
}

void folderSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    println("User selected " + selection.getAbsolutePath());
    
    Path oldFile1 = Paths.get(sketchPath()+"/LensFlares/FireGlow/"+dropList1.getSelectedText()+".dds");
    Path newFile1 = Paths.get(selection.getAbsolutePath()+"/Data/Textures/LensFlares/FireGlow.dds");
    try{Files.copy(oldFile1, newFile1); } catch (IOException e) {println("FireGlow ПАЧИМУ НИ РАБОТAИТ!!!!!");}
    
    Path oldFile2 = Paths.get(sketchPath()+"/LensFlares/GeneralGlow/"+dropList2.getSelectedText()+".dds");
    Path newFile2 = Paths.get(selection.getAbsolutePath()+"/Data/Textures/LensFlares/GeneralGlow.dds");
    try{Files.copy(oldFile2, newFile2); } catch (IOException e) {println("СУКА БЛЯ ПАЧИМУ НИ РАБОТAИТ!!!!!");}
    
    Path oldFile3 = Paths.get(sketchPath()+"/LensFlares/GlowCircle/"+dropList3.getSelectedText()+".dds");
    Path newFile3 = Paths.get(selection.getAbsolutePath()+"/Data/Textures/LensFlares/GlowCircle.dds");
    try{Files.copy(oldFile3, newFile3); } catch (IOException e) {println("GeneralGlow ПАЧИМУ НИ РАБОТAИТ!!!!!");}
    
    Path oldFile4 = Paths.get(sketchPath()+"/LensFlares/LensFlareCenter/"+dropList4.getSelectedText()+".dds");
    Path newFile4 = Paths.get(selection.getAbsolutePath()+"/Data/Textures/LensFlares/LensFlareCenter.dds");
    try{Files.copy(oldFile4, newFile4); } catch (IOException e) {println("LensFlareCenter ПАЧИМУ НИ РАБОТAИТ!!!!!");}
    
    Path oldFile5 = Paths.get(sketchPath()+"/LensFlares/LensFlareRays/"+dropList5.getSelectedText()+".dds");
    Path newFile5 = Paths.get(selection.getAbsolutePath()+"/Data/Textures/LensFlares/LensFlareRays.dds");
    try{Files.copy(oldFile5, newFile5); } catch (IOException e) {println("LensFlareRays ПАЧИМУ НИ РАБОТAИТ!!!!!");}

    Path oldFile6 = Paths.get(sketchPath()+"/LensFlares/LensHexShape/"+dropList6.getSelectedText()+".dds");
    Path newFile6 = Paths.get(selection.getAbsolutePath()+"/Data/Textures/LensFlares/LensHexShape01.dds");
    try{Files.copy(oldFile6, newFile6); } catch (IOException e) {println("LensHexShape1 ПАЧИМУ НИ РАБОТAИТ!!!!!");}
    
    Path oldFile7 = Paths.get(sketchPath()+"/LensFlares/LensHexShape/"+dropList7.getSelectedText()+".dds");
    Path newFile7 = Paths.get(selection.getAbsolutePath()+"/Data/Textures/LensFlares/LensHexShape02.dds");
    try{Files.copy(oldFile7, newFile7); } catch (IOException e) {println("LensHexShape2 ПАЧИМУ НИ РАБОТAИТ!!!!!");}

    Path oldFile8 = Paths.get(sketchPath()+"/LensFlares/LensSoftReflectionRound/"+dropList8.getSelectedText()+".dds");
    Path newFile8 = Paths.get(selection.getAbsolutePath()+"/Data/Textures/LensFlares/LensSoftReflectionRound.dds");
    try{Files.copy(oldFile8, newFile8); } catch (IOException e) {println("LensSoftReflectionRound ПАЧИМУ НИ РАБОТAИТ!!!!!");}
       
    Path oldFile9 = Paths.get(sketchPath()+"/LensFlares/LensStreakSmudge/"+dropList9.getSelectedText()+".dds");
    Path newFile9 = Paths.get(selection.getAbsolutePath()+"/Data/Textures/LensFlares/LensStreakSmudge.dds");
    try{Files.copy(oldFile9, newFile9); } catch (IOException e) {println("LensStreakSmudge ПАЧИМУ НИ РАБОТAИТ!!!!!");}
    
    Path oldFile10 = Paths.get(sketchPath()+"/LensFlares/SpikeFlare/"+dropList10.getSelectedText()+".dds");
    Path newFile10 = Paths.get(selection.getAbsolutePath()+"/Data/Textures/LensFlares/SpikeFlare.dds");
    try{Files.copy(oldFile10, newFile10); } catch (IOException e) {println("SpikeFlare ПАЧИМУ НИ РАБОТAИТ!!!!!");}
    
    Path oldFile11 = Paths.get(sketchPath()+"/LensFlares/LensGlow/"+dropList11.getSelectedText()+".dds");
    Path newFile11 = Paths.get(selection.getAbsolutePath()+"/Data/Textures/LensFlares/LensGlow.dds");
    try{Files.copy(oldFile11, newFile11); } catch (IOException e) {println("LensGlow ПАЧИМУ НИ РАБОТAИТ!!!!!");}

  }
}

// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("FOLARE Installer");
  dropList1 = new GDropList(this, 10, 40, 150, 220, 10, 10);
  dropList1.setItems(loadStrings("list_968977"), int (random(0, 7)));
  dropList1.setLocalColorScheme(GCScheme.RED_SCHEME);
  dropList1.addEventHandler(this, "dropList1_click1");
  dropList2 = new GDropList(this, 10, 80, 150, 220, 10, 10);
  dropList2.setItems(loadStrings("list_323743"), int (random(0, 7)));
  dropList2.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  dropList2.addEventHandler(this, "dropList2_click1");
  dropList3 = new GDropList(this, 10, 120, 150, 220, 10, 10);
  dropList3.setItems(loadStrings("list_270981"), int (random(0, 19)));
  dropList3.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  dropList3.addEventHandler(this, "dropList3_click1");
  dropList4 = new GDropList(this, 10, 160, 150, 220, 10, 10);
  dropList4.setItems(loadStrings("list_725679"), int (random(0, 20)));
  dropList4.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  dropList4.addEventHandler(this, "dropList4_click1");
  dropList5 = new GDropList(this, 10, 200, 150, 220, 10, 10);
  dropList5.setItems(loadStrings("list_781282"), int (random(0, 12)));
  dropList5.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  dropList5.addEventHandler(this, "dropList5_click1");
  dropList6 = new GDropList(this, 10, 240, 150, 220, 10, 10);
  dropList6.setItems(loadStrings("list_361232"), int (random(0, 61)));
  dropList6.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  dropList6.addEventHandler(this, "dropList6_click1");
  dropList7 = new GDropList(this, 10, 280, 150, 220, 10, 10);
  dropList7.setItems(loadStrings("list_823039"), int (random(0, 61)));
  dropList7.addEventHandler(this, "dropList7_click1");
  dropList8 = new GDropList(this, 10, 320, 150, 220, 10, 10);
  dropList8.setItems(loadStrings("list_645464"), int (random(0, 8)));
  dropList8.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  dropList8.addEventHandler(this, "dropList8_click1");
  dropList9 = new GDropList(this, 10, 360, 150, 220, 10, 10);
  dropList9.setItems(loadStrings("list_724033"), 1);
  dropList9.setLocalColorScheme(GCScheme.RED_SCHEME);
  dropList9.addEventHandler(this, "dropList9_click1");
  dropList10 = new GDropList(this, 10, 400, 150, 220, 10, 10);
  dropList10.setItems(loadStrings("list_984932"), int (random(0, 7)));
  dropList10.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  dropList10.addEventHandler(this, "dropList10_click1");
  dropList11 = new GDropList(this, 10, 440, 152, 132, 6, 10);
  dropList11.setItems(loadStrings("list_639218"), int (random(0, 27)));
  dropList11.addEventHandler(this, "dropList11_click1");
  label1 = new GLabel(this, 12, 20, 80, 20);
  label1.setText("FireGlow");
  label1.setOpaque(false);
  label2 = new GLabel(this, 12, 60, 80, 20);
  label2.setText("GeneralGlow");
  label2.setOpaque(false);
  label3 = new GLabel(this, 12, 100, 80, 20);
  label3.setText("GlowCircle");
  label3.setOpaque(false);
  label4 = new GLabel(this, 12, 140, 100, 20);
  label4.setText("LensFlareCenter");
  label4.setOpaque(false);
  label5 = new GLabel(this, 12, 180, 100, 20);
  label5.setText("LensFlareRays");
  label5.setOpaque(false);
  label6 = new GLabel(this, 12, 220, 100, 20);
  label6.setText("LensHexShape1");
  label6.setOpaque(false);
  label7 = new GLabel(this, 12, 260, 100, 20);
  label7.setText("LensHexShape2");
  label7.setOpaque(false);
  label8 = new GLabel(this, 12, 300, 150, 20);
  label8.setText("LensSoftReflectionRound");
  label8.setOpaque(false);
  label9 = new GLabel(this, 12, 340, 120, 20);
  label9.setText("LensStrikSmudge");
  label9.setOpaque(false);
  label10 = new GLabel(this, 12, 380, 80, 20);
  label10.setText("SpikeFlare");
  label10.setOpaque(false);
  label11 = new GLabel(this, 12, 420, 80, 20);
  label11.setText("LensGlow");
  label11.setOpaque(false);
  Install_Button = new GButton(this, 600, 445, 80, 30);
  Install_Button.setText("Install");
  Install_Button.addEventHandler(this, "button1_click1");
  Random_Button = new GButton(this, 600, 480, 80, 30);
  Random_Button.setText("Randomize");
  Random_Button.addEventHandler(this, "button1_click2");
  SaveImage_Button = new GButton(this, 600, 515, 80, 30);
  SaveImage_Button.setText("Save Preset");
  SaveImage_Button.addEventHandler(this, "button1_click3");
  LoadImage_Button = new GButton(this, 600, 550, 80, 30);
  LoadImage_Button.setText("Load Preset");
  LoadImage_Button.addEventHandler(this, "button1_click4");
}
