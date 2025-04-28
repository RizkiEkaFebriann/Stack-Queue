import 'percobaan1.dart';
void main() {
 Stack s = Stack();
 s.StackOperation(100);
 s.push(10);
 s.push(20);
 s.push(30);

 s.pop();
 print("Last Element of Stack: " + s.top().toString());
 s.printStack();
}
