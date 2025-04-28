import 'dart:collection';

void main() {
  final queue = Queue<int>();

  queue.add(10);
  queue.add(20);
  queue.add(30);

  final firstItem = queue.removeFirst();
  print('Item yang dikeluarkan: $firstItem'); 
  print('Elemen depan sekarang: ${queue.first}');
  print('Elemen belakang sekarang: ${queue.last}'); 
  print('Apakah queue kosong? ${queue.isEmpty}'); 
}