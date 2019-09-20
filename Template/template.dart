import 'dart:io';

void main () {
	AbstractDisplay d1 = new CharDisplay("H");
	AbstractDisplay d2 = new StringDisplay("Hello, Dipsy");
	AbstractDisplay d3 = new StringDisplay("YOYO");

	d1.display();
	d2.display();
	d3.display();

}

abstract class AbstractDisplay {
	void open() {}
	void printt() {}
	void close() {}
	void display() {
		open();
		for(int i = 0; i < 5; i ++){
			printt();
		}
		close();
	}
}

class CharDisplay extends AbstractDisplay{
	String char;
	CharDisplay(this.char);
	void open(){
		stdout.write("<<");
	}
	void printt(){
		stdout.write(char);
	}
	void close(){
		stdout.write(">>\n");
	}
}

class StringDisplay extends AbstractDisplay{
	String string;
	int width;

	StringDisplay(String string){
		this.string = string;
		this.width = this.string.length;
	}

	void open(){
		printLine();
	}

	void printt(){
		print("|${string}|");
	}

	void close() {
		printLine();
	}

	void printLine(){
		String output = "";
		output += "+";
		for(int i = 0; i < width; i ++){
			output += "-";
		}
		output += "+";
		print(output);
	}
}