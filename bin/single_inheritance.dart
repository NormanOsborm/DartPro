// class Study{
//   String institute="chandhranpilla technologies ";
//   String course="theng kayattam";
//   void display(){
//     print("my institute is $institute and my course is $course");
//   }
// }
//
// class Student extends Study{
//   String name ="kannan srank";
//   int age=55;
//   void studentinfrom(){
//     print("My name is $name and my age is $age");
//   }
// }
//
// void main(){
//   Student obj=Student();
//   obj.display();
//   obj.studentinfrom();
//   print(obj.institute);
// }

class Salary{
  String position ="canteen head";
  var salary="50k";

}
class Employee extends Salary{
  String name = "thankan";
  int age=45;
  void printDetails(){
    print("ninak $name ne ariyo!!!");
    print("edaaa njan aada ivduthe $position...enik $salary salary undeda");
  }
}
void main(){
  Employee ob =Employee();
  ob.printDetails();
}
