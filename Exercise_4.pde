char letter;
Alphabet newAlphabet;

void setup() {
  size(1000, 1000);
  newAlphabet = new Alphabet();
}

void draw() {
  background(255);
  newAlphabet.generate(letter);
  newAlphabet.display();
}

void keyPressed() {
  letter = key;
}

class Alphabet {
  char letter;
  int a1 = 10, b1 = 990, a2, b2;
  int e1, f1, e2, f2;
  int x1, y1, x2, y2;
  Alphabet() {
  }

  void generate(char l) {
    letter = l;
    e1 = a2;
    f1 = b2;
    x1 = e2;
    y1 = f2;
    if (letter == 'a') {
      a2 = 500;
      b2 = 10;
      e2 = 990;
      f2 = 990;
      x2 = a1;
      y2 = b1;
    } else if (letter == 'b') {
      a1 = 10;
      b1 = 10;
      a2 = 10;
      b2 = 990;
      e2 = 990;
      f2 = 740;
      x2 = 10;
      y2 = 500;
    } else if (letter == 'c') {
      a1 = 990;
      b1 = 10;
      a2 = 10;
      b2 = 250;
      e2 = 10;
      f2 = 750;
      x2 = 990;
      y2 = 990;
    }
  }
  void display() {
    line(a1, b1, a2, b2);
    line(e1, f1, e2, f2);
    line(x1, y1, x2, y2);
  }
}
