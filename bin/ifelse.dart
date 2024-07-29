import 'dart:io';

void main(){
  print("Enter your age:");
  int age=int.parse(stdin.readLineSync()!);
  if (age>=18){
    print("you pass 10th");

  }else{
    print("you fail 10th");
  }
}