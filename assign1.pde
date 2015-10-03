int x;
int ha,tx,ty;
int e1,e2,ex1,ex2;
PImage bg1;
PImage bg2;
PImage enemy1;
PImage enemy2;
PImage fight;
PImage hp;
PImage trea;

void setup () {
  size(640,480) ;
  background(255);
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  enemy1 = loadImage("img/enemy.png");
  enemy2 = loadImage("img/enemy.png");
  fight = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  trea = loadImage("img/treasure.png");
  
  ha=floor(random(31,220)); //hp// 
  tx=floor(random(30,500)); //treasure//
  ty=floor(random(60,450)); //treasure//
  e1=floor(random(60,175)); //enemy//
  e2=floor(random(300,450)); //enemy//
 
}

void draw() {
  //Background//
  background(255);
  image(bg1, x, 0);
  image(bg2, x-640, 0);
  image(bg1, x-1280, 0);
  x += 1;
  x %= 1280;
  
  //Fighter//
  image(fight, 580, 240);
  
  //HP//
  colorMode(HSB,128,60,30);
  strokeWeight(20);
  stroke(180, 280, 30);
  line(30,32,ha,32);
  image(hp, 20, 20);
  
  //Treasure//
  image(trea, tx, ty);
  
  //Enemy1//
  image(enemy1, ex1, e1);
  image(enemy1, ex1-2000, e1);
  image(enemy1, ex1-4000, e1);
  ex1 += 4;
  ex1 %= 4000;
  
  //Enemy2//
  image(enemy1, ex2, e2);
  image(enemy1, ex2-1200, e2);
  image(enemy1, ex2-2400, e2);
  ex2 += 3;
  ex2 %= 2400;
 
  
  
}
