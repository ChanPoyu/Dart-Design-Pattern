void main(){
	Print p = new PrintBanner("yo");

	p.printWeek();
	p.printStrong();
}

abstract class Print {
	void printWeek();
	void printStrong();
}

class PrintBanner implements Print{
	Banner _banner;

	PrintBanner(String string){
		this._banner  = new Banner(string);
	}

	void printWeek(){
		return this._banner.showWithParen();
	}

	void printStrong(){
		return this._banner.showWithAster();
	}
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