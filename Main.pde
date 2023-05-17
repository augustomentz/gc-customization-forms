ArrayList<TEXTBOX> textboxes = new ArrayList<TEXTBOX>();
ArrayList<BUTTON> buttons = new ArrayList<BUTTON>();

int HEIGHT = 600;
int WIDTH = 1200;

int RECT_HEIGHT, RECT_WIDTH, CIRCLE_SIZE, BORDER_COLOR_R, BORDER_COLOR_G, BORDER_COLOR_B, BG_COLOR_R, BG_COLOR_G, BG_COLOR_B;

CIRCLE circle = null;
RECTANGLE rectangle = null;

void setup() {
  size(1200, 600);

  configFields();
}

void configFields() {
   // RECTANGLE
   TEXTBOX rectHeight = new TEXTBOX(275, 70, 200, 23);
   rectHeight.BorderEnable = true;
   TEXTBOX rectWidth = new TEXTBOX(275, 125, 200, 23);
   rectWidth.BorderEnable = true;
   TEXTBOX rectBgColorR = new TEXTBOX(40, 70, 200, 23);
   rectBgColorR.BorderEnable = true;
   TEXTBOX rectBgColorG = new TEXTBOX(40, 125, 200, 23);
   rectBgColorG.BorderEnable = true;
   TEXTBOX rectBgColorB = new TEXTBOX(40, 180, 200, 23);
   rectBgColorB.BorderEnable = true;
   // END RECTANGLE
   
   // CIRCLE
   TEXTBOX circleSize = new TEXTBOX(875, 70, 200, 23);
   circleSize.BorderEnable = true;
   TEXTBOX circleBorderColorR = new TEXTBOX(640, 70, 200, 23);
   circleBorderColorR.BorderEnable = true;
   TEXTBOX circleBorderColorG = new TEXTBOX(640, 125, 200, 23);
   circleBorderColorG.BorderEnable = true;
   TEXTBOX circleBorderColorB = new TEXTBOX(640, 180, 200, 23);
   circleBorderColorB.BorderEnable = true;
   // END CIRCLE
   
   BUTTON rectButton = new BUTTON(275, 180, 200, 25);
   rectButton.ButtonText = "DRAW RECTANGLE";
   BUTTON circleButton = new BUTTON(875, 180, 200, 25);
   circleButton.ButtonText = "DRAW CIRCLE";
   
   textboxes.add(rectHeight);
   textboxes.add(rectWidth);
   textboxes.add(rectBgColorR);
   textboxes.add(rectBgColorG);
   textboxes.add(rectBgColorB);
   textboxes.add(circleBorderColorR);
   textboxes.add(circleBorderColorG);
   textboxes.add(circleBorderColorB);
   textboxes.add(circleSize);
   buttons.add(rectButton);
   buttons.add(circleButton);
}

void configLabels() {
   fill(0, 0, 0);
   textSize(15);
   
   // RECTANGLE
   text("RECTANGLE:", 20, 25);
   text("WIDTH:", 275, 60);
   text("HEIGHT:", 275, 115);
   text("BACKGROUND (RGB):", 40, 60);
   text("R:", 20, 85);
   text("G:", 20, 140);
   text("B:", 20, 195);
   // END RECTANGLE
   
   // CIRCLE
   text("CIRCLE:", 620, 25);
   text("SIZE:", 875, 60);
   text("BORDER COLOR (RGB):", 640, 60);
   text("R:", 620, 85);
   text("G:", 620, 140);
   text("B:", 620, 195);
   // END CIRCLE
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
     this.clear();

     if (textboxes.get(2).Text == "" || textboxes.get(3).Text == "" || textboxes.get(4).Text == "") {
       textboxes.get(2).Text = "0";
       textboxes.get(3).Text = "0";
       textboxes.get(4).Text = "0";
     }
       
     RECT_WIDTH = Integer.parseInt(textboxes.get(0).Text);
     RECT_HEIGHT = Integer.parseInt(textboxes.get(1).Text);
     BG_COLOR_R = Integer.parseInt(textboxes.get(2).Text);
     BG_COLOR_G = Integer.parseInt(textboxes.get(3).Text);
     BG_COLOR_B = Integer.parseInt(textboxes.get(4).Text);
     
     if (RECT_WIDTH > 350) RECT_WIDTH = 350;     
     if (RECT_HEIGHT > 250) RECT_HEIGHT = 250;

     rectangle = new RECTANGLE(RECT_WIDTH, RECT_HEIGHT, (300 - (RECT_WIDTH / 2)), (400 - (RECT_HEIGHT / 2)), BG_COLOR_R, BG_COLOR_G, BG_COLOR_B);
 }
   
   if (buttons.get(1).clicked) {
     this.clear();
     
     if (textboxes.get(5).Text == "" || textboxes.get(6).Text == "" || textboxes.get(7).Text == "") {
       textboxes.get(5).Text = "0";
       textboxes.get(6).Text = "0";
       textboxes.get(7).Text = "0";
     }
     
     BORDER_COLOR_R = Integer.parseInt(textboxes.get(5).Text);
     BORDER_COLOR_G = Integer.parseInt(textboxes.get(6).Text);
     BORDER_COLOR_B = Integer.parseInt(textboxes.get(7).Text);
     CIRCLE_SIZE = Integer.parseInt(textboxes.get(8).Text);
     
     if (CIRCLE_SIZE > 120) CIRCLE_SIZE = 120;
     
     circle = new CIRCLE(900, 400, CIRCLE_SIZE, BORDER_COLOR_R, BORDER_COLOR_G, BORDER_COLOR_B);
   }
   
   if (circle != null) {
     circle.DRAW();
   }
   
   if (rectangle != null) {
     rectangle.DRAW();
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

void clear() {
   background(211);
}
