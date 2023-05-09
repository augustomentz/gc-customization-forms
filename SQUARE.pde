public class SQUARE {
  public int height = 0;
  public int width = 0;
  public int BG_R = 0;
  public int BG_G = 0;
  public int BG_B = 0;
  public int BORDER_R = 0;
  public int BORDER_G = 0;
  public int BORDER_B = 0;
  
  SQUARE() {
  }
   
  SQUARE(int height, int width, int BG_R, int BG_G, int BG_B, int BORDER_R, int BORDER_G, int BORDER_B) {
    this.height = height;
    this.width = width;
    this.BG_R = BG_R;
    this.BG_G = BG_G;
    this.BG_B = BG_B;
    this.BORDER_R = BORDER_R;
    this.BORDER_G = BORDER_G;
    this.BORDER_B = BORDER_B;
  }
  
  void DRAW() {
    strokeWeight(2);
    stroke(this.BORDER_R, this.BORDER_G, this.BORDER_B);
    fill(this.BG_R, this.BG_G, this.BG_B);
    rect(500, 280, this.height, this.width);
  }
}
