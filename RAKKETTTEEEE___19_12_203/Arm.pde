class Arm {

  private int laenge;
  private ArrayList<Block> blocks;
  // private ArrayList<Arm> arms;
  private PVector richtung;


  
  
  public Arm(int l, int x0, int y0, int z0, int blocksize, PVector r) {
    richtung = new PVector().set(r);
    laenge =  l;
    blocks = new ArrayList<Block>();
    int x = x0;
    int y = y0;
    int z = z0;
    for (int i = 0; i < l; i++) {

      x = x + blockSize * int(richtung.x);
      y = y + blockSize * int(richtung.y);
      z = z + blockSize * int(richtung.z);

      blocks.add(new Block(x, -y, z, blockSize));
    }
  }

  public void draw() {

    pushMatrix();

    // translate(position.x, position.y, position.z);

    // rotateY(PI/2.0);


    for (Block block : blocks) {

      block.display();
    }

    popMatrix();
    // rotation += 0.01;     //Look around
  }
}
