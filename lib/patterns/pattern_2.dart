import 'dart:io';


void main() {
	int i, j, n;
    n = 5;

    for (i = n; i >= 2; i--){
        int value = 1;
        for (j= 1; j <= i; j++){
            stdout.write(value);
            stdout.write(" ");
            value += 2;
        }
        stdout.write("\n");
    }

    for (i = 1; i <= n; i++){
        
        int value = 1;
        for (j = 1; j <= i; j++){
            stdout.write(value);
            stdout.write(" ");
            value += 2;
        }
        stdout.write("\n");
    }
}
