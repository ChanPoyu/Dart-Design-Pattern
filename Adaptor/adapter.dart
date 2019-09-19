import './lib/Print.dart' as Print;

void main(){
	Print.Print p = new PrintBanner("Dude");

	p.printWeek();
	p.printStrong();
}

class Banner {
	String _string;
	
	Banner(this._string);

	void showWithParen(){
		print("(${this._string})");
	}

	void showWithAster(){
		print("*${this._string}*");
	}
}

class PrintBanner extends Banner implements Print.Print{
	PrintBanner(String string) : super(string);

	void printWeek(){
		super.showWithParen();
	}

	void printStrong(){
		super.showWithAster();
	}
}

