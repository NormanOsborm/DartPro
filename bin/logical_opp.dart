void main(){
  String username="admin";
  int password=123456;

  print(username=="admin" && password==123456); //and opp(&&)= 2 conditionum true aavanam ennale total condition true aavullu

  print(username=="admin" || password==12345);  //or opp(||) = ethelum onn true aaya motham true aavum

  print(!(username=="admin" && password==12345)); //not opp(! before a () ) = statement true ahne false enn kanikum...ini false ahne true enn kanikum
}