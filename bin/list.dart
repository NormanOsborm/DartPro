void main() {
  List<int> list1 = [1, 2, 3, 4, 5, 6, 7]; //List ennath class aahn athahnu L capital...syntax=List<dt> list=[]
  print(list1);

  var list2 = ["Harry", 2, 3, 4, 5.5]; //var ella dt support cheyond ellathm add cheyyam
  print(list2);

  list1.add(5); //listil puthya number add cheyyan.....ettom last possitionil add aavum
  print(list1);

  list1[5] = 10; //5th possition number change cheyyan
  print(list1);

  List<int> list3 = [2, 3, 4, 56, 8, 900, 6];
  list1.addAll(list3);
  print(list1);  //list3 ne list1 ilek add aakunnu

  print(list1.length);//list inte length kaanan

  list1.insert(4, 25);//4th possitionil 25 add aavum
  print(list1);

  list1.remove(6);//first 6 remove aavum
  print(list1);

  list1.removeAt(5);//aa possitionil ullath remove aavum
  print(list1);

  list1.removeRange(0, 5);//0 muthal 5vare remove avm but 5th possition aavilla
  print(list1);

  print(list1.join(" - "));//join kodtha aa [] pookum

  list1.forEach((e){
    print(e);
  }); //for loop thonann e anna variablil total list loop aayi ,oronnayi add akum

  var list4=List.empty(growable:true);//to create an empty list //growable:true kodthale add cheyyan pattu
  list4.addAll(list2);//addALL kodkathe namak oru value aayi add akam
  print(list4);

  if(list4.contains(2)){
    print("element contaions in list4");

  }else{
    print("there is no such element in the list");
  }

  var list5=List.from(list4);
  print(list5);

  var list6=List.generate(6, (index) => index); //to generate a list with desired index and number of values...growable:true already true aayirikum
  list6[0]=10; //0th position il value add akan
  print(list6);

  var list7=List.unmodifiable(list6);
  print(list7);
  // list7.add(12);//cannot add to an unmodifiable list
  // print(list7);


}
