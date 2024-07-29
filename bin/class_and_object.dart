class Myclass{ //class
  static String course='flutter';//static variable
  String name="Hari";//global variable/instance variable
  void show(){
    String name1="Harry"; //local variable
    print(name);//see the color change of global variable
    print(name1);
  }
}
void main(){
  Myclass obj1=Myclass(); //object creation..Myclass() ennath class create aavumbo thanne create aavunna athe pere ulla function aahn...object create cheyyumbo athum call cheyyanam
  obj1.show();
  //inganem print cheyyam
  print(obj1.name);//global variable print cheyyan aadyam object call cheyyanam
  //or
  print("my name is ${obj1.name}");
  //aa name il ulla value change chayyanamengil
  obj1.name="Hari";
  //static variable print cheyyan aadyam classine call cheyyanam
  print(Myclass.course);
  print("my course is ${Myclass.course}");
}