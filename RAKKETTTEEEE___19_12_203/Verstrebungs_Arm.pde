/*
class Verstrebungs_Arm {

  private int laenge;
  private ArrayList<Block> blocks;

  public Verstrebungs_Arm(int l, int x, float blocksize) {
    laenge =  l;
    blocks = new ArrayList<Block>();
    for (int i = 0; i < l; i++) {

      float y = i * blockSize;
      blocks.add(new Block(x, -y, 0, blockSize));
    }
  }
  
  public void draw() {

    pushMatrix();

    // translate(position.x, position.y, position.z);

    // rotateY(rotation);

    for (Block block : blocks) {

      block.display();
    }

    popMatrix();
    // rotation += 0.01;     //Look around
  }
}
*/
