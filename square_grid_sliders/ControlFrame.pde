
class ControlFrame extends PApplet {

  int w, h;
  PApplet parent;
  ControlP5 cp5;

  public ControlFrame(PApplet _parent, int _w, int _h, String _name) {
    super();   
    parent = _parent;
    w=_w;
    h=_h;
    PApplet.runSketch(new String[]{this.getClass().getName()}, this);
  }

  public void settings() {
    size(w, h);
  }

  public void setup() {
    surface.setLocation(10, 10);
    cp5 = new ControlP5(this);
    
    
    //int squareSizeMin = 0;
    //float squareSizeRandom = 40;
    //int gridSize = 10;
    //int blendMode = 2;
    //int distanceMin = 10;
    //float distanceRandom = 0;
    //int colorMin = 255;
    //float colorRandom = 0;
    //int border = 50;
       
    cp5.addSlider("square Size Min")
       .plugTo(parent, "squareSizeMin")
       .setRange(0, 100)
       .setValue(0)
       .setPosition(80, 50)
       .setSize(200, 20);
       
  
      cp5.addSlider("square Size Random")
       .plugTo(parent, "squareSizeRandom")
       .setRange(0, 100)
       .setValue(40)
       .setPosition(80, 80)
       .setSize(200, 20);
       
  
      cp5.addSlider("grid Size")
       .plugTo(parent, "gridSize")
       .setRange(0, 50)
       .setValue(10)
       .setPosition(80, 130)
       .setSize(200, 20);
       
       cp5.addSlider("distance Min")
       .plugTo(parent, "distanceMin")
       .setRange(0, 30)
       .setValue(10)
       .setPosition(80, 180)
       .setSize(200, 20);
       
      cp5.addSlider("distance Random")
       .plugTo(parent, "distanceRandom")
       .setRange(0, 50)
       .setValue(0)
       .setPosition(80, 210)
       .setSize(200, 20);
       
       cp5.addSlider("color Min")
       .plugTo(parent, "colorMin")
       .setRange(0, 255)
       .setValue(255)
       .setPosition(80, 260)
       .setSize(200, 20);
       
      cp5.addSlider("color Random")
       .plugTo(parent, "colorRandom")
       .setRange(0, 255)
       .setValue(0)
       .setPosition(80, 290)
       .setSize(200, 20);
       
      cp5.addSlider("alpha")
       .plugTo(parent, "alph")
       .setRange(0, 255)
       .setValue(255)
       .setPosition(80, 320)
       .setSize(200, 20);
       
    cp5.addSlider("stroke min")
       .plugTo(parent, "strokeWMin")
       .setRange(0, 20)
       .setValue(3)
       .setPosition(80, 370)
       .setSize(200, 20);
       
    cp5.addSlider("stroke random")
       .plugTo(parent, "strokeWRandom")
       .setRange(0, 20)
       .setValue(0)
       .setPosition(80, 400)
       .setSize(200, 20);
       
     cp5.addSlider("border")
       .plugTo(parent, "border")
       .setRange(0, 200)
       .setValue(50)
       .setPosition(80, 450)
       .setSize(200, 20);
       
    cp5.addSlider("bg col")
       .plugTo(parent, "bgCol")
       .setRange(0, 255)
       .setValue(0)
       .setPosition(80, 500)
       .setSize(200, 20);
       
    cp5.addSlider("blend Mode")
       .plugTo(parent, "myBlendMode")
       .setRange(1, 4)
       .setValue(2)
       .setPosition(80, 550)
       .setSize(200, 20);
       
   cp5.addSlider("Subscribe")
       .plugTo(parent, "rainbow")
       .setRange(0, 1)
       .setValue(0)
       .setPosition(80, 600)
       .setSize(200, 30);
  }
    void draw() {
    background(0);
  }
}
