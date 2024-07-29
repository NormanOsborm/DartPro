import 'dart:io';

void main(){
  print("Enter your number:");
  int oe=int.parse(stdin.readLineSync()!);
  if(oe%2==0){
    print("Your number is even");
  }else{
    print("your number is odd");
  }
}