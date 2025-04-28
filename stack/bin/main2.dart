import 'percobaan2.dart';
void main() {
  var stack = Stack<int>();
  var test = stack.isEmpty();
  print(test); // Output: true
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);
  stack.push(7);
  print(stack); // Output: [1, 2, 3, 4, 5, 7]
  
  var myNumber = stack.pop();
  print('My 1st number is $myNumber');
  var mySecNumber = stack.pop();
  print('My 2nd number is $mySecNumber');
 
  print(stack.pop()); // Output: 4
  print(stack); // Output: [1, 2, 3]
  
  print(stack.top()); // Output: 3
  print(stack.isEmpty()); // Output: false
}
 
