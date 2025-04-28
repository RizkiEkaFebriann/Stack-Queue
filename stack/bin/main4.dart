import 'percobaan4.dart';
import 'dart:io';
void main() {
  var pti = PostfixToInfix();
  String postfixExp;
 
  stdout.write("Postfix Expression : ");
  postfixExp = stdin.readLineSync()!;
  print("Infix Expression : ${pti.toInfix(postfixExp)}");
}