void main(){
  show();
  print(show1());
  show2(34, 34);
  print(show3(3546,3));
  showda(243, b: 56, c: 465/* optional if we don't print c it will show null */);
  show4(34, b: 56);
  show5();
}


void show(){
            //default function
  int a=10;
  int b=12;
  int c=a+b;
  print(c);
}


int show1(){
             //function with return type
   int a=20,b=50;
   int sum=a+b;
  return sum;
}


void show2(int a ,int b){
             //parameterized function without return type
  int sum=a+b;
  print(sum);
}


int show3(int a , int b){
             //parameterized function with return type
  int sum=a+b;
  return sum;
}


void showda(int a,{required int b,int? c}){
             //optional parameterized function without return type
  print(a);
  print(b);
  print(c);
}


void show4(int a,{required int b,int c=20}){
             //optional parameterized function without return type with default value
  print(a);
  print(b);
  print(c);
}

void show5()=>print("cheen tapak dam dam"); //lambda function
