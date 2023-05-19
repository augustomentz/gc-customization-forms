public class RECTANGLE {
  int w, h, x, y, colorR, colorG, colorB;

  RECTANGLE(int w, int h, int x, int y, int colorR, int colorG, int colorB) {
    this.w = w;
    this.h = h;
    this.x = x;
    this.y = y;
    this.colorR = colorR;
    this.colorG = colorG;
    this.colorB = colorB;
  }
  
  void DRAW() {
    fill(this.colorR, this.colorG, this.colorB);
    noStroke();
    beginShape();
    
    vertex(x, y);
    vertex(x + w, y);
    vertex(x + w, y + h);
    vertex(x, y + h);

    endShape();
  }
}
