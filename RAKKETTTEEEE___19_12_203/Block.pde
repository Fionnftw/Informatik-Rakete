public class Block {

  private PVector position;

  private float size;

  public Block(float x, float y, float z, float size) {

    position = new PVector(x, y, z);

    this.size = size;
  }

  public void display() {

    pushMatrix();

    translate(position.x, position.y, position.z);

    box(size);

    popMatrix();
  }
}
