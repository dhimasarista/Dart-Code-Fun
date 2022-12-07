import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  // Tampilkan Convert Message (UTF-8 only)
  print("Convert Message (UTF-8 Only)");
  print("-----------------------------");
  print("""
Rules:
1. Encode: lowercase and UpperCase doesn't matter
2. Decode:  - message must be [1, 2, 3] not [1,2,3]
            - Input the message without [ ]""");
  print("-----------------------------");
  // Pilih Opsi: Encode atau Decode
  print("1. Encode");
  print("2. Decode");
  int selector;
  while (true) {
    stdout.write("Select Mode: ");
    selector = int.parse(stdin.readLineSync()!);

    if (selector == 1 || selector == 2) {
      break;
    }
  }

  stdout.write("Input The Message: ");
  String message = stdin.readLineSync()!;
  print("-----------------------------");
  if (selector == 1) {
    var messageToEncode = utf8.encode(message);
    print(messageToEncode);
  } else if (selector == 2) {
    // Melakukan konversi dan split pada message yang berupa String ke List<String>
    List<String> msgParseToListString = message.split(", ");
    List<int> parsingList = [];

    // msgParseToListString adalah List<String>
    // Gunakan looping untuk di pecah ke variabel biasa kemudian parse ke int
    // variabel yang sudah diparse kemudian masukkan ke parsingList
    for (var i = 0; i < msgParseToListString.length; i++) {
      String valueOfString = msgParseToListString[i];
      int valueOfinteger = int.parse(valueOfString);
      parsingList.insert(i, valueOfinteger);
    }

    var messageToDecode = utf8.decode(parsingList);
    print(messageToDecode);

    // var messageToDecode = utf8.decode(msgParseToList);
    // print(utf8.decode([77, 117, 104, 97, 109, 109, 97, 100, 32, 68, 104, 105, 109, 97, 115, 32, 65, 114, 105, 115, 116, 97]));
  }

  // Jika Encode, maka jalankan Encode
  // Jika Decode, maka jalankan Decode
  // Kemudian Masukan pesan yang ingin dirubah, pada decode tanpa []

  // Terakhir tampilkan Pesan yang sudah dikonversi
}
