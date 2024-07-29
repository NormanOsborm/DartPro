import 'dart:io';

void main() {
  // for(int i=0; i<=10 ;i++){
  //   print(i);
  // }

  for (int i = 0; i <= 20; i++) {
    if (i % 2 == 0) {
      if (i == 0) {
        continue;
      }
      print(i);
    }
  }
}