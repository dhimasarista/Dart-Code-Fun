import 'dart:io';


void main(){
	for (var i = 0; i <= 5; i++) {
		if (i == 4) {
			continue;
		}
		int value = 1;
		for (var j = 0; j < i; j++) {
			if (value == 5) {
				value += 2;
			}
			stdout.write(value);
			stdout.write(" ");
			value += 2;
		}
		stdout.write("\n");
	}
}