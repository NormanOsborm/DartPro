class Calc{
  int a=26780,b=308760;

  void add()
  {
    print("a+b= ${a+b}");
  }
  void sub()
  {
    print("a-b= ${a-b}");
  }
  void mul()
  {
    print("a*b=${a*b}");
  }
  void div(){
    print("a/b=${a/b}");
  }

}
void main(){
  Calc obj=Calc();
  obj..add()..sub()..mul()..div();//casscading
}