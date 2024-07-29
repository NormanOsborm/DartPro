//fibonacci
// void main() {
//   int n = 10, num1 = 0, num2 = 1;
//
//   for (int i = 0; i < n; i++) {
//     print(num1);
//     int a = num1;
//     num1 = num2;
//     num2 = a + num2;
//   }
// }


//palindrome
//import 'dart:io';

// void main() {
//   print("Enter a number: ");
//   int num = int.parse(stdin.readLineSync()!);
//
//   int rev = 0, rem, org = num;
//
//   while (num != 0) {
//     rem = num % 10;
//     rev = rev * 10 + rem;
//     num = num ~/ 10;
//   }
//
//   if (rev == org) {
//     print("Its a palindrome");
//   } else {
//     print("Its not a palindrome");
//   }
// }

//multiplication table
// import 'dart:io';
// void main() {
//   print('Enter a number: ');
//   int num = int.parse(stdin.readLineSync()!);
//
//   for (int i = 1; i <= 10; i++) {
//     print(num*i);
//   }
// }


//factorial
// import 'dart:io';
//
// void main() {
//   print('Enter a number: ');
//   int num = int.parse(stdin.readLineSync()!);
//
//   int fact = 1;
//   for (int i = 2; i <= num; i++) {
//     fact =fact* i;
//   }
//
//   print(fact);
// }
