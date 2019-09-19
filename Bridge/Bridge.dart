void main() {
  Display d1 = new Display(new StringDisplayImpl("Hello, SD1"));
  Display d2 =
      new CountDisplay(new StringDisplayImpl("Hello, Technology Center"));
  CountDisplay d3 = new CountDisplay(new StringDisplayImpl("Hello, MTI"));

  d1.display();
  d2.display();
  d3.display();
  d3.multiDisplay(5);
}

abstract class DisplayImpl {
  void rawOpen();
  void rawPrint();
  void rawClose();
}

class StringDisplayImpl implements DisplayImpl {
  String string;
  int width;
  StringDisplayImpl(String string) {
    this.string = string;
    this.width = string.length;
  }

  void rawOpen() {
    printLine();
  }

  void rawPrint() {
    print("|${string}|");
  }

  void rawClose() {
    printLine();
  }

  void printLine() {
    String line = "";

    line = line + "+";

    for (int i = 0; i < width; i++) {
      line = line + "-";
    }

    line = line + "+";

    print(line);
  }
}

class Display {
  DisplayImpl _impl;

  Display(DisplayImpl impl) {
    this._impl = impl;
  }

  void open() {
    _impl.rawOpen();
  }

  // print は予約語なのでprinttにします
  void printt() {
    _impl.rawPrint();
  }

  void close() {
    _impl.rawClose();
  }

  void display() {
    open();
    printt();
    close();
  }
}

class CountDisplay extends Display {
  CountDisplay(DisplayImpl impl) : super(impl);

  void multiDisplay(int times) {
    open();
    for (int i = 0; i < times; i++) {
      printt();
    }
    close();
  }
}
