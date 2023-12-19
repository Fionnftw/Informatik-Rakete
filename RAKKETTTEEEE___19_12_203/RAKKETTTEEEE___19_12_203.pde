private PVector position;

private float rotation;

private int blockSize;

private ArrayList<Block> blocks;

Arm lArm;
Arm rArm;
VerstrebungsArm2 V2Arm;
//Verstrebungs_Arm vArm;

public void setup() {

  size(1000, 1000, P3D);

  position = new PVector(width / 2, height / 2, 0);

  rotation = 0;

  blockSize = 50;

  lArm = new Arm(6, 100, 0, 0, blockSize, new PVector(0,-1,0));
  rArm = new Arm(5, 150, 0, 0, blockSize, new PVector(1,0,0));
  //vArm = new Verstrebungs_Arm(10, 250, blockSize);

  blocks = new ArrayList<Block>();

  for (int i = 0; i < 0; i++) {

    float y = i * blockSize;
    blocks.add(new Block(0, -y, 0, blockSize));
  }

  /*
  int verschiebunglinks = -25;
   
   //obere dicke Reihe
   blocks.add(new Block(verschiebunglinks, -350, 0, blockSize/2));
   blocks.add(new Block(verschiebunglinks*2, -350, 0, blockSize/2));
   blocks.add(new Block(verschiebunglinks*3, -350, 0, blockSize/2));
   blocks.add(new Block(verschiebunglinks*4, -350, 0, blockSize/2));
   blocks.add(new Block(verschiebunglinks*5, -350, 0, blockSize/2));
   blocks.add(new Block(verschiebunglinks*6, -350, 0, blockSize/2));
   blocks.add(new Block(verschiebunglinks*7, -350, 0, blockSize/2));
   
   
   //mittlere dicke Reihe
   blocks.add(new Block(verschiebunglinks, -300, 0, blockSize/2));
   blocks.add(new Block(verschiebunglinks*2, -300, 0, blockSize/2));
   blocks.add(new Block(verschiebunglinks*3, -300, 0, blockSize/2));
   blocks.add(new Block(verschiebunglinks*4, -300, 0, blockSize/2));
   blocks.add(new Block(verschiebunglinks*5, -300, 0, blockSize/2));
   blocks.add(new Block(verschiebunglinks*6, -300, 0, blockSize/2));
   blocks.add(new Block(verschiebunglinks*7, -300, 0, blockSize/2));
   
   
   //untere dicke Reihe
   blocks.add(new Block(verschiebunglinks, -100, 0, blockSize/2));
   blocks.add(new Block(verschiebunglinks*2, -100, 0, blockSize/2));
   blocks.add(new Block(verschiebunglinks*3, -100, 0, blockSize/2));
   blocks.add(new Block(verschiebunglinks*4, -100, 0, blockSize/2));
   blocks.add(new Block(verschiebunglinks*5, -100, 0, blockSize/2));
   blocks.add(new Block(verschiebunglinks*6, -100, 0, blockSize/2));
   blocks.add(new Block(verschiebunglinks*7, -100, 0, blockSize/2));
   
   
   //untere kleine Reihe
   blocks.add(new Block((verschiebunglinks+8), -150, 0, blockSize/3));
   blocks.add(new Block((verschiebunglinks+8)*2, -150, 0, blockSize/3));
   blocks.add(new Block((verschiebunglinks+8)*3, -150, 0, blockSize/3));
   blocks.add(new Block((verschiebunglinks+8)*4, -150, 0, blockSize/3));
   blocks.add(new Block((verschiebunglinks+8)*5, -150, 0, blockSize/3));
   */
}

public void draw() {

  background(255);

  lights();

  pushMatrix();

  translate(position.x, position.y, position.z);

  rotateY(rotation);

  for (Block block : blocks) {

    block.display();
  }

  lArm.draw();
  rArm.draw();
  //vArm.draw();

  popMatrix();
  // rotation += 0.01;     //Look around
}

public void keyPressed() {

  if (keyCode == UP) {
    position.z += 10;
  } else if (keyCode == DOWN) {
    position.z -= 10;
  } else if (keyCode == LEFT) {
    rotation -= 0.1;
  } else if (keyCode == RIGHT) {
    rotation += 0.1;
  }
}
