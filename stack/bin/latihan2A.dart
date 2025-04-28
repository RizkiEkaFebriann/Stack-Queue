import 'dart:io';

class Konversi {
  int desimal;
  List<int> stack = [];

  Konversi(this.desimal);

  void pushToStack(int value) {
    stack.add(value);
  }

  int pop() {
    return stack.removeLast();
  }

  String convertWithStack(int base) {
    if (desimal == 0) return '0';
    int temp = desimal;
    while (temp > 0) {
      pushToStack(temp % base);
      temp ~/= base;
    }
    
    String result = '';
    while (stack.isNotEmpty) {
      int digit = pop();
      if (digit < 10) {
        result += digit.toString();
      } else {
        result += String.fromCharCode(digit - 10 + 'A'.codeUnitAt(0));
      }
    }
    
    return result;
  }

  String keBiner() => convertWithStack(2);
  String keOktal() => convertWithStack(8);
  String keHeksadesimal() => convertWithStack(16);
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