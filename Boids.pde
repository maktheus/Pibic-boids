int n; // How many boids we have.
float sCoef;
float aCoef;
float cCoef;
float radius;

float maxSpeed;
float maxForce;

Boid[] boids;

PShape boidShape;

void setup() {
  size(1280, 920);

  frameRate(60);
  
  n = 300;
  aCoef = 0.3;
  sCoef = 0.5;
  cCoef = 0.5;
  radius = 100;
  
  maxSpeed = 3;
  maxForce = 0.1;
  
  boids = new Boid[n];
  
  for (int i = 0; i < boids.length; i++) {
    boids[i] = new Boid(new PVector(random(0, width), random(0, height)), PVector.random2D());
  }
  
  float shapeSize = 4;
  boidShape = createShape();
  boidShape.beginShape();
  boidShape.strokeWeight(1.5);
  boidShape.noFill();
  boidShape.stroke(255);
  boidShape.vertex(shapeSize * 4, 0);
  boidShape.vertex(-shapeSize, shapeSize * 2);
  boidShape.vertex(0, 0);
  boidShape.vertex(-shapeSize, -shapeSize * 2);
  boidShape.endShape(CLOSE);
}