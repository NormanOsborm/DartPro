void main(){
  Map<String,dynamic>map1={"name":"Harry","age":20,"mark":56.3};
  print(map1);

  var map2={"name":"Hari","age":20,"mark":63.2};
  print(map2);

  Map map3=Map();
  map3["names"]="gandharvan";
  map3["ages"]="infinity";
  map3["marks"]="not seem to be";
  print(map3);

  print(map3["name"]); //printing only the specified variable

  //loop
  map2.forEach((key , value){
    print("$key = $value");
  });

  print("the keys are ${map2.keys}");
  print("the values are ${map2.values}");

  //to check a value is there in the map
  print(map3.containsValue("gandharvan"));

  //to check a key is there in the map
  print(map3.containsKey('name'));

  //to convert a list to a map
  //creatin 2 list
  var list1=[1,2];
  var list2=["Osborn","Orcorp"]; //list 1 and 2 should have same length or it would have an unhandled error

  Map map4=Map.fromIterables(list1,list2);
  print (map4);

  Map map5={}..addAll(map3)..addAll(map1); //combining 2 maps...need the ensure the 2 maps need different key names
  print (map5);
  Map map6={...map3,...map1};
  print(map6);
}