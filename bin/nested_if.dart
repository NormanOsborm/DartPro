import 'dart:io';

void main(){
  print("Enter your number:");
  int num=int.parse(stdin.readLineSync()!);
  if (num>=40){
    if (num%10==0){
      print("pass");
    }
    else{
      print("not pass");
    }
  }else{
    if(num<10){
      print("blah");
    }else{
      print("bluhh");
    }
  }
}