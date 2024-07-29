import 'dart:io';

void main(){
  print("enter your day");
  String day=stdin.readLineSync()!;

  if (day=="monday"){
    print("inn malayalam massam aswathy");
  }else if(day=="tuesday"){
    print("inn Bharani");
  }else if(day=="wednesday"){
    print("in karthika");
  }else if(day=="thursday"){
    print("inn rohini");
  }else if(day=="friday"){
    print("inn makeeram");
  }else if(day=="saturday"){
    print("inn punartham");
  }else{
    print("inn sunday veetil iri");
  }
}



















