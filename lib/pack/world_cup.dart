import "dart:io";
import 'dart:math';

void main() {
  print("Program Prediksi Pertandingan");
  print("----------------------------- ");

  stdout.write("Masukkan Team 1: ");
  String Team1 = stdin.readLineSync()!;
  stdout.write("Masukkan Team 2: ");
  String Team2 = stdin.readLineSync()!;

  int Team1Goal = Random().nextInt(7);
  int Team2Goal = Random().nextInt(7);

  if (Team1Goal == Team2Goal) {
    stdout.write("Apakah Ini Babak Grup? ");
    String stage = stdin.readLineSync()!;
    if (stage == "Y" ||
        stage == "Yes" ||
        stage == "yes" ||
        stage == "y" ||
        stage == "ya") {
      print("$Team1 $Team1Goal - $Team2Goal $Team2");
    } else if (stage == "No" ||
        stage == "N" ||
        stage == "no" ||
        stage == "n" ||
        stage == "tidak") {
      int TeamGoal1Penalty = Random().nextInt(5);
      int TeamGoal2Penalty = Random().nextInt(5);
      print("$Team1 $TeamGoal1Penalty (P) $TeamGoal2Penalty $Team2");
    }
  } else {
    print("$Team1 $Team1Goal - $Team2Goal $Team2");
  }
}
