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


  if (counter < tokens.length) {
    String s = tokens[counter];
    counter++;
    concordance.increment(s);
  }

 
  float x = 0;
  float y = 60;

  concordance.sortValues();

  String[] keys = concordance.keyArray();


  for (String word : keys) {
    int count = concordance.get(word);
 char letter = char(counter);
 
    if (count > 10) {
      int fsize = constrain(count, 0, 48);
      textSize(fsize);
      text(word, x, y);
      x += textWidth(word + " ");
    }
  if (letter == 'j' || letter == 'u' || letter == 'l' || letter == 'i' || letter == 'e' || letter == 't') {
        fill(255, 51, 102);
      } 
      else {
        fill(255);
      }

    if (x > width) {
      x = 0;
      y += 60;
      if (y > height) {
        break;
      }
    }
  }
}

