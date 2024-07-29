import 'dart:collection';

void main(){
  List<int> list1=[1,2,3,4,5]; //cannot create directly
  Queue queue1=Queue.from(list1);
  print(queue1);

  queue1.add(25);
  print(queue1);

  queue1.addFirst(20);
  print(queue1);

  queue1.addLast(30);
  print(queue1);

  queue1.remove(25);
  print(queue1);

  queue1.removeLast();
  print(queue1);

  queue1.removeFirst();
  print(queue1);

  //loop forach
  queue1.forEach((element){
    print(element);
  });


  //loop forin
  for(var data in queue1){
    print(data);
  }


}