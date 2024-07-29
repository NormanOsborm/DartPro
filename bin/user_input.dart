import 'dart:io';

void main(){
  print("Enter your name:");
  String name=stdin.readLineSync()!;// in the case of string
  print("Enter your age");
  int age=int.parse(stdin.readLineSync()!);//integer and double case il mathreme ee .parse varu

  print("Enter your mark");
  double mark=double.parse(stdin.readLineSync()!);
  print("your name is $name , your age is $age and your mark is $mark ");
}