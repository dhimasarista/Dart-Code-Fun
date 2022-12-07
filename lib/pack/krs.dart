import 'dart:io';

void main(List<String> args) {
  var matkulUnggulan = MatkulUnggulan();

  stdout.write("Masukkan NIM: ");
  int nim = int.parse(stdin.readLineSync()!);
  stdout.write("Masukkan Nama: ");
  String nama = stdin.readLineSync()!;
  print("""
-----Program Studi-----
1. Informatika
2. Manajemen
3. Sastra Inggris
""");
  stdout.write("Pilih Program Studi [1/2/3]: ");
  String programStudi = stdin.readLineSync()!;

  List<String> matKulInformatika = [
    "Dasar Pemrograman",
    "Struktur Data & Algoritma",
    "Algoritma & Pemrograman"
  ];

  List<String> matKulManajemen = [
    "Komunikasi & Negosiasi Bisnis",
    "Statistika Bisnis",
    "Perilaku Organisasi",
  ];

  List<String> matkulSastraInggris = [
    "Bahasa Inggris",
    "Sintaksis Bahasa Inggris",
    "Semantik Bahasa Inggris"
  ];

  if (programStudi == "1") {
    matkulUnggulan.matKul = matKulInformatika;
  } else if (programStudi == "2") {
    matkulUnggulan.matKul = matKulManajemen;
  } else if (programStudi == "3") {
    matkulUnggulan.matKul = matkulSastraInggris;
  }

  String? biayaKuliah = null;
  if (programStudi == "1") {
    biayaKuliah = "Rp. 4.500.000";
  } else if (programStudi == "2") {
    biayaKuliah = "Rp. 4.300.000";
  } else if (programStudi == "3") {
    biayaKuliah = "Rp. 4.100.000";
  }

  if (programStudi == "1") {
    programStudi = "Informatika";
  } else if (programStudi == "2") {
    programStudi = "Manajemen";
  } else if (programStudi == "3") {
    programStudi = "Sastra Inggris";
  }
  print("""

Kartu Rencana Studi
==================================
NIM           : ${nim}
Nama          : ${nama}
Program Studi : ${programStudi}
Biaya Kuliah  : ${biayaKuliah}
==================================
No.  Nama Mata Kuliah Unggulan
==================================
1.   ${matkulUnggulan.matKul[0]}
2.   ${matkulUnggulan.matKul[1]}
3.   ${matkulUnggulan.matKul[2]}
==================================
""");
}

class MatkulUnggulan {
  List<String> matKul = [];
}
