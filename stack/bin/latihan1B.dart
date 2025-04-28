import 'dart:io';

void main() {
  stdout.write('Masukkan kalimat : ');
  String input = stdin.readLineSync()!;
  
  String reversed = input.split('').reversed.join();
  print('Hasil = $reversed');
  
  String cleanedInput = input.replaceAll(' ', '').toLowerCase();
  String cleanedReversed = reversed.replaceAll(' ', '').toLowerCase();
  
  if (cleanedInput == cleanedReversed) {
    print('Palindrom');
  } else {
    print('Bukan palindrom');
  }
}