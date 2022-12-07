import 'dart:io';

void main() {
  brewer();
}

void brewer() async {
  // input jenis kopi
  // cappucino, cappucino late

  print("""
-------------------
Daftar Minuman:
1. Cappucino
2. Cappucino + late
-------------------
""");

  String minuman;

  while (true) {
    stdout.write("Masukkan Jenis Minuman: ");
    String DaftarMinuman = stdin.readLineSync()!;

    if (DaftarMinuman == "1") {
      minuman = "Cappucino";
      break;
    } else if (DaftarMinuman == "2") {
      minuman = "Cappucino late";
      break;
    } else {
      print("Minuman Tidak Tersedia...");
    }
  }

  // input ukuran
  // 60 oz, 70 oz, 80 oz

  print("""
-------------------
Daftar Ukuran:
1. 60 oz
2. 70 oz
3. 80 oz
-------------------
""");

  /*
    Default Value
    Cappucino + 60 oz: 10s + late 6s = 16
  */

  /*
    Others Value
    70 oz: 15s + late 6s = 21
    80 oz: 20 + late 6s = 26
  */

  int ukuran;
  while (true) {
    stdout.write("Masukkan Ukuran Minuman: ");
    String daftarUkuran = stdin.readLineSync()!;

    if (daftarUkuran == "1") {
      ukuran = 60;
      break;
    } else if (daftarUkuran == "2") {
      ukuran = 70;
      break;
    } else if (daftarUkuran == "3") {
      ukuran = 80;
      break;
    } else {
      print("Ukuran Tidak Tersedia...");
    }
  }

  // indikator lampu
  /* 
    - Memasukkan & Memanaskan Air: 3
    - Jika ada late, masukkan Susu
    - Ukuran Air sesuai Waktu
  */

  String? pesanan;
  if (minuman == "Cappucino" && ukuran == 60) {
    pesanan = "Cappucino \nUkuran: 60 oz";
  } else if (minuman == "Cappucino" && ukuran == 70) {
    pesanan = "Cappucino \nUkuran: 70 oz";
  } else if (minuman == "Cappucino" && ukuran == 80) {
    pesanan = "Cappucino \nUkuran: 80 oz";
  } else if (minuman == "Cappucino late" && ukuran == 60) {
    pesanan = "Cappucino Late \nUkuran: 60 oz";
  } else if (minuman == "Cappucino late" && ukuran == 70) {
    pesanan = "Cappucino Late \nUkuran: 70 oz";
  } else if (minuman == "Cappucino late" && ukuran == 80) {
    pesanan = "Cappucino Late \nUkuran: 80 oz";
  }

  print("\x1B[2J\x1B[0;0H");
  print("-----------------------------------------");
  print("                 Status               ");
  print("-----------------------------------------");
  print("Pesanan: $pesanan");
  print("-----------------------------------------");

  Future.delayed(Duration(seconds: 1), () {
    stdout.write("Membuat Pesanan...   \t\t\t");
    if (minuman == "Cappucino" && ukuran == 60) {
      loader(10 + 6);
    } else if (minuman == "Cappucino" && ukuran == 70) {
      loader(15 + 6 * 2);
    } else if (minuman == "Cappucino" && ukuran == 80) {
      loader(20 + 6);
    } else if (minuman == "Cappucino late" && ukuran == 60) {
      loader(16 + 6);
    } else if (minuman == "Cappucino late" && ukuran == 70) {
      loader(21 + 6);
    } else if (minuman == "Cappucino late" && ukuran == 80) {
      loader(26 + 6);
    }
    print("");
  });

  if (minuman == "Cappucino" && ukuran == 60) {
    prosesPesananFunc(10, "Cappucino");
  } else if (minuman == "Cappucino" && ukuran == 70) {
    prosesPesananFunc(15, "Cappucino");
  } else if (minuman == "Cappucino" && ukuran == 80) {
    prosesPesananFunc(20, "Cappucino");
  } else if (minuman == "Cappucino late" && ukuran == 60) {
    prosesPesananFunc(16, "Cappucino Late");
  } else if (minuman == "Cappucino late" && ukuran == 70) {
    prosesPesananFunc(21, "Cappucino Late");
  } else if (minuman == "Cappucino late" && ukuran == 80) {
    prosesPesananFunc(26, "Cappucino Late");
  }
}

void prosesPesananFunc(int second, String pesanan) async {
  var prosesPesanan = await getOrder(second, pesanan);
  print(prosesPesanan);
}

Future<String> getOrder(int detik, String name) {
  return Future.delayed(Duration(seconds: detik), () {
    print("Pesanan Telah Siap...");
    print("-----------------------------------------");
    return "Waktu $name: $detik detik";
  });
}

void loader(int sec) {
  // paramater sec jika diisi nilai 10 setara dengan 4.5 detik
  stdout.write('-');
  for (int i = 0; i < sec; i++) {
    sleep(Duration(milliseconds: 100));
    stdout.write("\b\\");
    sleep(Duration(milliseconds: 100));
    stdout.write("\b|");
    sleep(Duration(milliseconds: 100));
    stdout.write("\b/");
    sleep(Duration(milliseconds: 100));
    stdout..write("\b-");

    if (i == sec) {
      break;
    }
  }
}
