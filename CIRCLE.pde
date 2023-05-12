public class Circle {
  int cx, cy, radius, colorR, colorG, colorB;
  
  Circle(int cx, int cy, int radius, int colorR, int colorG, int colorB) {
    this.cx = cx;
    this.cy = cy;
    this.radius = radius;
    this.colorR = colorR;
    this.colorG = colorG;
    this.colorB = colorB;
    
    this.drawCircle();
  }
  
  void drawCircle() {
    int x = 0;
    int y = this.radius;
    int p = (5 - radius * 4) / 4;
    
    circlePointsx, y);
    
    while(x < y) {
      x++;
      if (p < 0) {
        p += 2*x+1;
      } else {
        y--;
        p += 2*(x-y)+1;
      }
      
      circlePoints(x, y);
    }
  }

  void circlePoints(int x, int y) {
    strokeWeight(2);
    stroke(color(this.colorR, this.colorG, this.colorB));
  
    if (x == 0) {
      point(this.cx, this.cy + y);
      point(this.cx, this.cy - y);
      point(this.cx + y, this.cy);
      point(this.cx - y, this.cy);
    } else if (x == y) {
      point(this.cx + x, this.cy + y);
      point(this.cx - x, this.cy + y);
      point(this.cx + x, this.cy - y);
      point(this.cx - x, this.cy - y);
    } else if (x < y) {
      point(this.cx + x, this.cy + y);
      point(this.cx - x, this.cy + y);
      point(this.cx + x, this.cy - y);
      point(this.cx - x, this.cy - y);
      point(this.cx + y, this.cy + x);
      point(this.cx - y, this.cy + x);
      point(this.cx + y, this.cy - x);
      point(this.cx - y, this.cy - x);
    }
  }
}
