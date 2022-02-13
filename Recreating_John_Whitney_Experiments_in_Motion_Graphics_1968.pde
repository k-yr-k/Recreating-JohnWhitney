// Recreating 'Experiments in Motion Graphics', 1968, by John Whitney
//     Original: https://www.youtube.com/watch?v=jIv-EcX9tUs&t=264s
// Recreated by Kenny Kim
// 2022.02.13

//Whitney used 31 lines too
static final int totalLines = 31;

//assign movement variable
float t;

void setup() {
  //taking cues from original background color
  background(#07181D);
  
  //4:3 aspect ratio
  size(1080, 810);
}

void draw() {
  //to clear lines after totalLines
  background(#07181D);
  
  //center art to the canvas
  translate(width/2, height/2);
  
  //change stroke thickness
  strokeWeight(2.5);

  //yellow line
  for (int i = 0; i < totalLines; i++){
    stroke(#dcd5bf);
    line(x1(t + i), y1(t + i), x2(t + i), y2(t + i));
  }

  //pink lines
  for (int j = 0; j < totalLines; j++){
    stroke(#A34A80);
    line(x3(t + j), y3(t + j), x4(t + j), y4(t + j));
  }
  
  //movement speed
  t += 1.2;

  //adding some delay after x number of frames
  if (frameCount % 180 == 0){
   delay(800);
  }
}

float x1(float t) {
  //return sin(t / 10) * 100 + sin(t / 5) * 20;
  return sin(t / 5) * 100;
}

float y1(float t) {
  //return cos(t / 10) * 200;
  return sin(t / 10) * 150;
}

float x2(float t) {
  //return sin(t / 10) * 200 + cos(t) * 2;
  return sin(t / 20) * 200;
}

float y2(float t) {
  //return cos(t / 20) * 400 + cos(t / 12) * 100;
  return sin(t / 40) * 350;
}

float x3(float t) {
  //return cos(t / 10) * 100 + cos(t / 5) * 20;
  return cos(t / 5) * 100;
}

float y3(float t) {
  //return sin(t / 10) * 100;
  return sin(t / 10) * 150;
}

float x4(float t) {
  //return cos(t / 10) * 200 + sin(t) * 2;
  return cos(t / 20) * 200;
}

float y4(float t) {
  //return sin(t / 50) * 600 + sin(t / 12) * 20 + sin(t / 10);
  return sin(t / 40) * 350;
}
