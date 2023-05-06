ArrayList<TEXTBOX> textboxes = new ArrayList<TEXTBOX>();
ArrayList<BUTTON> buttons = new ArrayList<BUTTON>();

int HEIGHT = 600;
int WIDTH = 1200;

boolean locked = false;
String name = "";

void setup() {
   size(1200, 600);
   
   TEXTBOX firstCustomization = new TEXTBOX(50, 40, 200, 35);
   firstCustomization.BorderEnable = true;
   TEXTBOX secondCustomization = new TEXTBOX(50, 110, 200, 35);
   secondCustomization.BorderEnable = true;
   
   //BUTTON submitBT = new BUTTON(100, 143, 200, 35);
   //submitBT.ButtonText = "Submit!";
   
   textboxes.add(firstCustomization);
   textboxes.add(secondCustomization);
   //buttons.add(submitBT);
}

void draw() {
   background(128, 128, 128);
   rect(0, 0, WIDTH, HEIGHT * 0.3);
   stroke(0);
   strokeWeight(2);
   line(HEIGHT, 0, HEIGHT, WIDTH);
   
   // LABELS
   fill(250, 250, 250);
   //textSize(15);
   //text("What's your name?", (width - textWidth("What's your name?")) / 2, 80);
   //textSize(24);
   
   // DRAW THE TEXTBOXES
   for (TEXTBOX t : textboxes) {
      t.DRAW();
   }
   
   // DRAW THE BUTTONS
   for (BUTTON b : buttons) {
      b.DRAW();
   }
   
   //if (buttons.get(0).clicked) {
   //   locked = true;
   //   name = textboxes.get(0).Text;
   //}
   
   if (locked) {
      fill(250, 250, 250);
      textSize(24);
      text("Hello " + name + "!", (width - textWidth("Hello " + name + "!")) / 2, 220);
   }
}

void mousePressed() {
   for (TEXTBOX t : textboxes) {
      t.PRESSED(mouseX, mouseY);
   }
   
   //for (BUTTON b : buttons) {
   //   b.PRESSED(mouseX, mouseY);
   //}
}

void mouseReleased() {
   //for (BUTTON b : buttons) {
   //   b.RELEASED(mouseX, mouseY);
   //}
}

void keyPressed() {
   for (TEXTBOX t : textboxes) {
      t.KEYPRESSED(key, (int)keyCode);
   }
}
