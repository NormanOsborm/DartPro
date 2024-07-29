import 'dart:io';

void main(){
  // print("Enter your year:");
  // dynamic year=dynamic.parse(dynamic.parse(tdin.readLineSync()!));
  // switch(year){
  //   case 2018 :
  //     print("flood");
  //     break;
  //   case 2019 :
  //     print("corona");
  //     break;
  //   case 2020 :
  //     print("lockdown");
  //     break;
  //   case 2021 :
  //     print("vaccin(co-vaccin,covi-sheild");
  //     break;
  //   case 2022 :
  //     print("first year");
  //     break;
  //   case 2023 :
  //     print("second year");
  //     break;
  //   case 2024 :
  //     print("last year");
  //     break;
  //   case 2025 :
  //     print("aadyam 24 kazhiyatte");
  //     break;
  //   default:
  //     print("ini nee timetravel cheyyth nok");
  // }



  print("Enter any 2 numbers:");

  // Parsing the input to integers
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);

  print("1. Add \n2. Sub \n3. Mul \n4. Div");
  String choice = stdin.readLineSync()!;
  dynamic result;

  switch (choice) {
    case '1':
      result = num1 + num2;
      break;
    case '2':
      result = num1 - num2;
      break;
    case '3':
      result = num1 * num2;
      break;
    case '4':
      result = num1 / num2;
      break;
    default:
      print("Invalid choice");
      return; // Exit the function if the choice is invalid
  }

  print(result);
}