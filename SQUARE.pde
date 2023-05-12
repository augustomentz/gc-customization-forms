public class Square {
  int w, h, x, y, colorR, colorG, colorB;

  Square(int w, int h, int x, int y, int colorR, int colorG, int colorB) {
      fill(colorR, colorG, colorB);
      beginShape();
      
      vertex(x, y);
      vertex(x + w, y);
      vertex(x + w, y + h);
      vertex(x, y + h);

      endShape();
  }
}
