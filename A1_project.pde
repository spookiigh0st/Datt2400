
int cols = 40;
int rows = 40;


int stepx, stepy;


int rand_switch = 0;

void setup() {
frameRate(19);
  size(600, 600);

  stepx = (width/cols);
  stepy = (height/cols);
  
  
size(600, 600, P3D);
background(22,22,22);
noStroke();
ambientLight(51, 102, 126);
shininess(1.0);
translate(600, 600, 600);
sphere(120);

}




void draw() {
  background(106,99,126);
  



  for (int y = 0; y < rows; y++) {
    for (int x = 0; x < cols; x++) {

    
      float xp = x*stepx;
      float yp = y*stepy;

   
      int offset = stepx/2;

    
      int method = 2;

      switch (method) {
      case 0:

       
        rand_switch = int(random(4));
        break;

      case 1:

      
        rand_switch = int(map (cos((x+offset)+(y+offset)*frameCount*0.001), -1, 1, 0, 4));
        break;

      case 2:

     
        float distance = dist(width/2, height/2, xp, yp) + cos(frameCount*0.05)*200;

        rand_switch = int(map(distance, 0, width/2+(offset), 0, 3)) ;
        break;
      }


    
      if (rand_switch == 0) {
         pushMatrix();
       translate(offset+xp,offset+yp);
       rotate(sin(x)*90+frameCount*0.1);
        arc(0, 0, stepx, stepy, radians(0), radians(90));
        fill(61,106,129);
        popMatrix(); 
        
      }

      if (rand_switch == 1) {
         pushMatrix();
       translate(offset+xp,offset+yp);
       rotate(sin(x)*90+frameCount*0.1);
        arc(0, 0, stepx, stepy, radians(90), radians(180));
        fill(61,129,111);
        popMatrix(); 
       
      }

      if (rand_switch == 2) {
         pushMatrix();
       translate(offset+xp,offset+yp);
       rotate(sin(x)*90+frameCount*0.1);
        arc(0, 0, stepx, stepy, radians(180), radians(270));
        fill(82,129,61);
        popMatrix(); 
        
      }
      if (rand_switch == 3) {
       pushMatrix();
       translate(offset+xp,offset+yp);
       rotate(sin(x)*90+frameCount*0.1);
        arc(0, 0, stepx, stepy, radians(270), radians(360));
        fill(126,129,61);
       popMatrix(); 
       
      }
    }
  }


}
