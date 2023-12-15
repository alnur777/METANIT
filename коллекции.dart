import 'dart:math';

void main() {
//Список или тип List<T> представляет набор значений.
  List numList = createRanNumList(10);
  print(numList);
  print(numList.reversed);
  print(numList.length);
  numList.add(44);
  print(numList);
  numList.sort();
  print(numList);
  // numList.forEach(print);

  // for (var element in numList) {
  //   print(element);
  // }

//Класс Set представляет неупорядоченный
// множество уникальных объектов или множество.
  print("---------------");
  Set numSet = createRanNumSet(10);
  print(numSet);
  print(numSet.length);
  numSet.add(44);
  print(numSet);

//Класс Map или словарь представляет
//коллекцию элементов, где каждый элемент имеет ключ и значение.
  print("---------------");
  Map<int, String> map = {
    1: "January",
    2: "February",
    3: "March",
    4: "April",
    5: "May"
  };
  Map<int, String> more = {6: "June", 7: "July"};
  print(map);
  print("The First month of the year: ${map[1]}");
  print(map.keys);
  print(map.values);
  map.addAll(more);
}

List<int> createRanNumList(int num) {
  List<int> list = [];

  for (int i = 0; i < num; i++) {
    list.add(Random().nextInt(200) - 100);
  }
  return list;
}

Set<int> createRanNumSet(int num) {
  Set<int> set = {};
  for (int i = 0; i < num; i++) {
    set.add(Random().nextInt(200) - 100);
  }
  return set;
}
