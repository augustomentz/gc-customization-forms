ArrayList<TEXTBOX> textboxes = new ArrayList<TEXTBOX>();
ArrayList<BUTTON> buttons = new ArrayList<BUTTON>();

int HEIGHT = 600;
int WIDTH = 1200;

String FORM_TYPE = "";
int FORM_WIDTH, FORM_HEIGHT, BORDER_COLOR_R, BORDER_COLOR_G, BORDER_COLOR_B, BG_COLOR_R, BG_COLOR_G, BG_COLOR_B;
boolean draw = false;

void setup() {
  size(1200, 600);
   
  configFields();
}

void configFields() {
   // form fields
   TEXTBOX formHeightTextbox = new TEXTBOX(250, 40, 200, 23);
   formHeightTextbox.BorderEnable = true;
   TEXTBOX formWidthTextbox = new TEXTBOX(250, 95, 200, 23);
   formWidthTextbox.BorderEnable = true;
   
   // RGB BORDER COLOR FIELDS
   TEXTBOX formBorderColorR = new TEXTBOX(500, 40, 200, 23);
   formBorderColorR.BorderEnable = true;
   TEXTBOX formBorderColorG = new TEXTBOX(500, 95, 200, 23);
   formBorderColorG.BorderEnable = true;
   TEXTBOX formBorderColorB = new TEXTBOX(500, 150, 200, 23);
   formBorderColorB.BorderEnable = true;
   
   // RGB FILL FIELDS
   TEXTBOX formBgColorR = new TEXTBOX(755, 40, 200, 23);
   formBgColorR.BorderEnable = true;
   TEXTBOX formBgColorG = new TEXTBOX(755, 95, 200, 23);
   formBgColorG.BorderEnable = true;
   TEXTBOX formBgColorB = new TEXTBOX(755, 150, 200, 23);
   formBgColorB.BorderEnable = true;
   
   BUTTON squareButton = new BUTTON(20, 40, 200, 25);
   squareButton.ButtonText = "SQUARE";
   BUTTON circleButton = new BUTTON(20, 95, 200, 25);
   circleButton.ButtonText = "CIRCLE";
   BUTTON drawButton = new BUTTON(WIDTH - 180, 150, 160, 25);
   drawButton.ButtonText = "DRAW";
   
   textboxes.add(formHeightTextbox);
   textboxes.add(formWidthTextbox);
   textboxes.add(formBorderColorR);
   textboxes.add(formBorderColorG);
   textboxes.add(formBorderColorB);
   textboxes.add(formBgColorR);
   textboxes.add(formBgColorG);
   textboxes.add(formBgColorB);
   buttons.add(squareButton);
   buttons.add(circleButton);
   buttons.add(drawButton);
}

void configLabels() {
   fill(0, 0, 0);
   textSize(15);
   text("FORM:", 20, 25);
   
   text("WIDTH:", 250, 25);
   text("HEIGHT:", 250, 85);
   
   text("BORDER COLOR (RGB):", 480, 25);
   text("R:", 480, 55);
   text("G:", 480, 112);
   text("B:", 480, 166);
   
   text("BACKGROUND (RGB):", 735, 25);
   text("R:", 735, 55);
   text("G:", 735, 112);
   text("B:", 735, 166);
}

void draw() {
   configLabels();
   
   // DRAW THE TEXTBOXES
   for (TEXTBOX t : textboxes) {
      t.DRAW();
   }
   
   // DRAW THE BUTTONS
   for (BUTTON b : buttons) {
      b.DRAW();
   }
   
   if (buttons.get(0).clicked) {
     FORM_TYPE = "SQUARE";
   }
   
   if (buttons.get(1).clicked) {
      FORM_TYPE = "CIRCLE";
   }
   
   if (buttons.get(2).clicked) {
     FORM_HEIGHT = Integer.parseInt(textboxes.get(0).Text);
     FORM_WIDTH = Integer.parseInt(textboxes.get(1).Text);  
     BORDER_COLOR_R = Integer.parseInt(textboxes.get(2).Text);
     BORDER_COLOR_G = Integer.parseInt(textboxes.get(3).Text);
     BORDER_COLOR_B = Integer.parseInt(textboxes.get(4).Text);
     BG_COLOR_R = Integer.parseInt(textboxes.get(5).Text);
     BG_COLOR_G = Integer.parseInt(textboxes.get(6).Text);
     BG_COLOR_B =Integer.parseInt(textboxes.get(7).Text);
   
     draw = true;
   }
 
   if (draw) {
     SQUARE sq = new SQUARE(FORM_HEIGHT, FORM_WIDTH, BG_COLOR_R, BG_COLOR_G, BG_COLOR_B, BORDER_COLOR_R, BORDER_COLOR_G, BORDER_COLOR_B);
     sq.DRAW();
     
     //CIRCLE sq = new CIRCLE(FORM_HEIGHT, BG_COLOR_R, BG_COLOR_G, BG_COLOR_B, BORDER_COLOR_R, BORDER_COLOR_G, BORDER_COLOR_B);
     //sq.DRAW();
   }
 }

void mousePressed() {
   for (TEXTBOX t : textboxes) {
      t.PRESSED(mouseX, mouseY);
   }
   
   for (BUTTON b : buttons) {
      b.PRESSED(mouseX, mouseY);
   }
}

void mouseReleased() {
   for (BUTTON b : buttons) {
      b.RELEASED(mouseX, mouseY);
   }
}

void keyPressed() {
   for (TEXTBOX t : textboxes) {
      t.KEYPRESSED(key, (int)keyCode);
   }
}
