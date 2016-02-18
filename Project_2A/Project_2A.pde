//Author: Pratik Jain
//Project 2A

//Drawing Poliwag

import processing.opengl.*;

float time = 0;

void setup() {
  size(800, 800, P3D);  
  noStroke();           
}

void draw() {
     resetMatrix();
     
     setupScene();
     drawPokemon();
     drawMouth();
     drawTail();
     
     //in the end draw the floor the pokemon is standing on:
     drawFloor();
     time = time + 0.025;
}

void setupScene(){
    background(208, 234, 242);
    perspective (PI * 0.333, 1.0, 0.01, 1000.0);
    camera (0.0, -35.0, 80.0, 0.0, -20.0, 0.0, 0.0, 1.0, 0.0);
    
    //Lighting
    ambientLight (102, 102, 102);
    lightSpecular (204, 204, 204);
    directionalLight (102, 102, 102, -0.7, -0.7, -1);
    directionalLight (152, 152, 152, 0, 0, -1);
}

void drawPokemon(){
    //main body
    pushMatrix();
    pokemonLightProperties();
    sphereDetail (40);
    rotate(-time, 0.0, 1.0, 0.0);
    translate (0, -20, 0);
    scale(1.0, 1.0, 0.8); //switch x and z
    sphere (12);
    popMatrix();
    
    //cone part of tail
    pushMatrix();
    pokemonLightProperties();
    rotate(-time, 0.0, 1.0, 0.0);
    translate (0.0, -16.0, -8.0);
    scale(1.0, 1.0, 1.0); //switch x and z
    drawCylinder(1, 5, 5, 30);    
    popMatrix();
    
    //left leg
    pushMatrix();
    pokemonLightProperties();          
    rotate(-time, 0.0, 1.0, 0.0);
    translate (-6.0, -11.5, 0.0);
    rotate(PI/12,0,0,1);
    rotate(PI/2,1,0,0);
    drawCylinder(1.5, 2, 9, 30);
    popMatrix();
    
    //left paw
    pushMatrix();
    pokemonLightProperties();          
    sphereDetail (40);
    rotate(-time, 0.0, 1.0, 0.0);
    translate(-7.5, -7.0, 2.5);
    scale(1.0, 0.5, 1.6);
    sphere (3);
    popMatrix();
    
    //right leg
    pushMatrix();
    pokemonLightProperties();          
    rotate(-time, 0.0, 1.0, 0.0);
    translate (6.0, -11.5, 0.0);
    rotate(-PI/12,0,0,1);
    rotate(PI/2,1,0,0);
    drawCylinder(1.5, 2, 9, 30);
    popMatrix();
    
    //right paw
    pushMatrix();
    pokemonLightProperties();          
    sphereDetail (40);
    rotate(-time, 0.0, 1.0, 0.0);
    translate(7.5, -7.0, 2.5);
    scale(1.0, 0.5, 1.6);
    sphere (3);
    popMatrix();
    
    //left eye
    pushMatrix();
    fill (0, 0, 0);
    ambient (200, 200, 200);
    specular (10, 10, 10);
    shininess (1.0);
    sphereDetail (40);
    rotate(-time, 0.0, 1.0, 0.0);
    translate(-6, -28.0, 4.8);
    rotate(-PI/8,0,1,0);
    rotate(-PI/8,0,0,1);
    rotate(PI/4.4,1,0,0);
    rotate(PI/2,0,1,0);
    scale(0.05, 1.0, 1.0);
    sphere (3.5);
    popMatrix();
    
    pushMatrix();
    fill (255, 255, 255);
    ambient (200, 200, 200);
    specular (10, 10, 10);
    shininess (1.0);
    sphereDetail (40);
    rotate(-time, 0.0, 1.0, 0.0);
    translate(-6, -28.0, 4.9);
    rotate(-PI/8,0,1,0);
    rotate(-PI/8,0,0,1);
    rotate(PI/4.4,1,0,0);
    rotate(PI/2,0,1,0);
    scale(0.1, 1.0, 1.0);
    sphere (3);
    popMatrix();
    
    pushMatrix();
    fill (0, 0, 0);
    ambient (200, 200, 200);
    specular (10, 10, 10);
    shininess (1.0);
    sphereDetail (40);
    rotate(-time, 0.0, 1.0, 0.0);
    translate(-5, -28.5, 5.4);
    rotate(-PI/8,0,1,0);
    rotate(-PI/8,0,0,1);
    rotate(PI/4.4,1,0,0);
    rotate(PI/2,0,1,0);
    scale(0.2, 1.0, 1.0);
    sphere (2.2);
    popMatrix();
    
    pushMatrix();
    fill (255, 255, 255);
    ambient (200, 200, 200);
    specular (10, 10, 10);
    shininess (1.0);
    sphereDetail (40);
    rotate(-time, 0.0, 1.0, 0.0);
    translate(-4.69, -28.4, 6.2);
    rotate(-PI/8,0,1,0);
    rotate(-PI/8,0,0,1);
    rotate(PI/4.4,1,0,0);
    rotate(PI/2,0,1,0);
    scale(0.25, 1.0, 1.0);
    sphere (1.34);
    popMatrix();
    
    //right eye
    pushMatrix();
    fill (0, 0, 0);
    ambient (200, 200, 200);
    specular (10, 10, 10);
    shininess (1.0);
    sphereDetail (40);
    rotate(-time, 0.0, 1.0, 0.0);
    translate(6, -28.0, 4.8);
    rotate(PI/8,0,1,0);
    rotate(PI/8,0,0,1);
    rotate(PI/4.4,1,0,0);
    rotate(PI/2,0,1,0);
    scale(0.05, 1.0, 1.0);
    sphere (3.5);
    popMatrix();
    
    pushMatrix();
    fill (255, 255, 255);
    ambient (200, 200, 200);
    specular (10, 10, 10);
    shininess (1.0);
    sphereDetail (40);
    rotate(-time, 0.0, 1.0, 0.0);
    translate(6, -28.0, 4.9);
    rotate(PI/8,0,1,0);
    rotate(PI/8,0,0,1);
    rotate(PI/4.4,1,0,0);
    rotate(PI/2,0,1,0);
    scale(0.1, 1.0, 1.0);
    sphere (3);
    popMatrix();
    
    pushMatrix();
    fill (0, 0, 0);
    ambient (200, 200, 200);
    specular (10, 10, 10);
    shininess (1.0);
    sphereDetail (40);
    rotate(-time, 0.0, 1.0, 0.0);
    translate(5, -28.5, 5.4);
    rotate(PI/8,0,1,0);
    rotate(PI/8,0,0,1);
    rotate(PI/4.4,1,0,0);
    rotate(PI/2,0,1,0);
    scale(0.2, 1.0, 1.0);
    sphere (2.2);
    popMatrix();
    
    pushMatrix();
    fill (255, 255, 255);
    ambient (200, 200, 200);
    specular (10, 10, 10);
    shininess (1.0);
    sphereDetail (40);
    rotate(-time, 0.0, 1.0, 0.0);
    translate(4.69, -28.4, 6.2);
    rotate(PI/8,0,1,0);
    rotate(PI/8,0,0,1);
    rotate(PI/4.4,1,0,0);
    rotate(PI/2,0,1,0);
    scale(0.25, 1.0, 1.0);
    sphere (1.34);
    popMatrix();
    
    //stomach
    pushMatrix();
    fill (255, 255, 255);
    ambient (200, 200, 200);
    specular (10, 10, 10);
    shininess (1.0);
    sphereDetail (40);
    rotate(-time, 0.0, 1.0, 0.0);
    translate(0, -17, 7.2);
    //rotate(PI/8,0,1,0);
    //rotate(PI/8,0,0,1);
    rotate(-PI/11,1,0,0);
    //rotate(PI/2,0,1,0);
    scale(1, 1, .3);
    sphere (7);
    popMatrix();
}

void drawMouth(){
    //big pink mouth  
    pushMatrix();
    fill (230, 131, 160);
    ambient (100, 100, 200);
    specular (0, 0, 10);
    shininess (1.0);    
    rotate(-time, 0.0, 1.0, 0.0);
    translate(0, -25.0, 8.5);
    rotate(PI/8,1,0,0);
    scale(.8, 0.35, 1.4);
    drawCylinder(5,5,0.8,8);
    popMatrix();
    
    //little black opening of the mouth
    pushMatrix();
    fill (0, 0, 0);
    ambient (100, 100, 200);
    specular (0, 0, 10);
    shininess (1.0);   
    rotate(-time, 0.0, 1.0, 0.0);
    translate(0, -25.0, 8.6);
    rotate(PI/8,1,0,0);
    scale(2.7, 0.35, 1.4);
    drawCylinder(1,1,0.8,8);
    popMatrix();
}

void drawTail(){
    //big pink mouth  
    pushMatrix();
    fill (230, 232, 247);
    ambient (255, 255, 255);
    specular (255, 255, 255);
    shininess (1.0);    
    rotate(-time, 0.0, 1.0, 0.0);
    translate(0, -21.5, -22);
    rotate(PI/2.8,1,0,0);
    scale(.4, .8, 1);
    drawCylinder(20,20,1,12);
    popMatrix();
    
    //little black opening of the mouth
    pushMatrix();
    fill (152, 167, 227);
    ambient (100, 100, 200);
    specular (0, 0, 10);
    shininess (1.0);    
    rotate(-time, 0.0, 1.0, 0.0);
    translate(0, -18.3, -15);
    rotate(PI/2+PI/2.8,1,0,0);
    scale(1, 1.5, 15);
    drawCylinder(1,0.4,1,8);
    popMatrix();
}

void drawFloor(){
    pushMatrix();
    fill (44, 107, 45);
    ambient (100, 200, 100);
    specular (0, 0, 1);
    shininess (1.0);
    rotate(-time, 0.0, 1.0, 0.0);
    rotate(PI/2,1,0,0);
    translate (0, 0, -73);
    scale(2.0, 2.0, 2.0);
    drawCylinder(40,40,80,12);
    popMatrix();
}

void pokemonLightProperties(){
    fill (152, 167, 227);
    ambient (100, 100, 200);
    specular (0, 0, 10);
    shininess (1.0);
}

//how to draw a cylinder or cone (updated method)
//had to modify the existing draw cylinder method to make sure that
//I can draw a cone as well
//source: http://vormplus.be/blog/article/drawing-a-cylinder-with-processing
void drawCylinder(float radius1, float radius2, float height, int sides){
    float angle = 360 / sides;
    float halfHeight = height / 2;
    
    // top
    beginShape();
    for (int i = 0; i < sides; i++) {
        float x = cos( radians( i * angle ) ) * radius1;
        float y = sin( radians( i * angle ) ) * radius1;
        vertex( x, y, -halfHeight);
    }
    endShape(CLOSE);
    
    // bottom
    beginShape();
    for (int i = 0; i < sides; i++) {
        float x = cos( radians( i * angle ) ) * radius2;
        float y = sin( radians( i * angle ) ) * radius2;
        vertex( x, y, halfHeight);
    }
    endShape(CLOSE);
    
    // draw body
    beginShape(TRIANGLE_STRIP);
    for (int i = 0; i < sides + 1; i++) {
        float x1 = cos( radians( i * angle ) ) * radius1;
        float y1 = sin( radians( i * angle ) ) * radius1;
        float x2 = cos( radians( i * angle ) ) * radius2;
        float y2 = sin( radians( i * angle ) ) * radius2;
        vertex( x1, y1, -halfHeight);
        vertex( x2, y2, halfHeight);
    }
    endShape(CLOSE); 
}