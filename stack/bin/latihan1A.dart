import 'dart:io';
class Konversi {
  int desimal;

  Konversi(this.desimal);

  String keBiner() {
    if (desimal == 0) return '0';
    int temp = desimal;
    String result = '';
    
    while (temp > 0) {
      result = (temp % 2).toString() + result;
      temp ~/= 2;
    }
    return result;
  }

  String keOktal() {
    if (desimal == 0) return '0';
    int temp = desimal;
    String result = '';
    
    while (temp > 0) {
      result = (temp % 8).toString() + result;
      temp ~/= 8;
    }
    return result;
  }

  String keHeksadesimal() {
    if (desimal == 0) return '0';
    int temp = desimal;
    String result = '';
    
    while (temp > 0) {
      int remainder = temp % 16;
      if (remainder < 10) {
        result = remainder.toString() + result;
      } else {
        result = String.fromCharCode(remainder - 10 + 'A'.codeUnitAt(0)) + result;
      }
      temp ~/= 16;
    }
    return result;
  }
}

void main() {
  stdout.write("Masukkan nilai desimal: ");
  String? input = stdin.readLineSync();

  if (input != null && int.tryParse(input) != null) {
    int desimal = int.parse(input);
    Konversi konversi = Konversi(desimal);

    print("Hasil nilai biner = ${konversi.keBiner()}");
    print("Hasil nilai oktal = ${konversi.keOktal()}");
    print("Hasil nilai heksadesimal = ${konversi.keHeksadesimal()}");
  } else {
    print("Input tidak valid. Harap masukkan angka desimal yang valid.");
  }
}