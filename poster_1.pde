PFont f;
IntDict concordance;
String[] tokens;
int counter = 0;

void setup(){
size(520, 659);
background(255);
f = createFont ("Georgia", 24);
textFont(f);
textAlign(CENTER, CENTER);

concordance = new IntDict();

String[] lines = loadStrings("romeo_and_juliet.txt");

}

void draw(){
 char letters = char(counter);

}
