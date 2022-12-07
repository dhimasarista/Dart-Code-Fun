import 'dart:io';


void main() {
    int row = 5;
    for (var i = 1; i <= row; i++) {
        for (var j = i; j <= row; j++) {
            if (j == row) {
                stdout.write(i);
            }else {
                stdout.write(i);
                stdout.write("-");
            }
        }
        stdout.write("+\n");
    }
}
