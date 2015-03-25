IntDict concordance;


String[] tokens;
int counter = 0;

void setup() {
  size(520, 659);

  concordance = new IntDict();


  String[] lines = loadStrings("romeo_and_juliet.txt");
  String allText = join(lines, " ").toLowerCase();
  tokens = splitTokens(allText, " ,.?!:;[]-\"");

  textFont(createFont("Georgia", 15));
}

void draw() {
  background(51);
  fill(255);

int margin = 10;
translate(margin*4, margin*4);

  if (counter < tokens.length) {
    String s = tokens[counter];
    counter++;
    concordance.increment(s);
  }

 
  float x = 0;
  float y = 40;

  concordance.sortValues();

  String[] keys = concordance.keyArray();


  for (String word : keys) {
    int count = concordance.get(word);

 
    if (count > 117) {
      int fsize = constrain(count, 0, 48);
      textSize(fsize);
      text(word, x, y);
      x += textWidth(word + " ");
    }

    if (x > width) {
      x = 0;
      y += 40;
      if (y > height) {
        break;
      }
    }
  }
}

