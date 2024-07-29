void main(){
  Set<int>set1={1,3,4,5,6};
  print(set1);

  var set2={2,3,4,"he ho ha",4.5};
  print(set2);

  set1.add(45);
  print(set1);

  print(set1.length);

  Set<int> set3={2,3,4,5,6,7,7};
  set1.addAll(set3);
  print(set1);

  set1.remove(45);
  print(set1);

  set1.forEach((element) {
    print(element);
  });

  print(set1.join(" , "));

  if(set1.contains(7)) {
    print("ha ha ha");

  }else {
    print("blah blah blah");
  }

  var set4=Set.from(set1);
  print(set4);

  var set5=Set();
  set5.addAll(set4);
  print(set5);

  Set<int> set6={1,2,4,5,6,7,8,7,8};
  Set<int> set7={2,76,757,687,435,988};

//these are methods
  //union
  print(set6.union(set7));//will take all

  //intersection
  print(set6.intersection(set7));//will take common in both

  //difference
  print(set6.difference(set7));//will take what is in set6 and what is not in set 7
  print(set7.difference(set6));

  //to convert a list to set
  List<int>list1=[2,3,4,5,6,7];
  var set9=list1.toSet();
  print(set9);

}