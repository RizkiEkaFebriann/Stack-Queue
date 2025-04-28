import 'dart:io';

class Stack {
  List<String> items = [];

  void push(String item) {
    items.add(item);
  }

  String pop() {
    if (items.isEmpty) {
      throw StateError('Stack is empty');
    }
    return items.removeLast();
  }

  bool isEmpty () {
    return items.isEmpty;
  }
  int length () {
    return items.length;
  }
}

void main() {
  stdout.write('Masukkan kalimat : ');
  String input = stdin.readLineSync()!;

  Stack stack = Stack();
  for (int i = 0; i < input.length; i++) {
    stack.push(input[i]);
  }
  
  String reversed = '';
  while (!stack.isEmpty()) {
    reversed += stack.pop();
  }
  
  print('Hasil = $reversed');
  
  String cleanedInput = input.replaceAll(' ', '').toLowerCase();
  String cleanedReversed = reversed.replaceAll(' ', '').toLowerCase();
  
  if (cleanedInput == cleanedReversed) {
    print('Palindrom');
  } else {
    print('Bukan palindrom');
  }
}