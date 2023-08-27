void main () {
  final numbers = [1,2,3,4,5,6,7,7,8,8,9,9,9,10];

  print("original list $numbers");
  print("lenght ${numbers.length}");
  print("position 0 ${numbers[0]}");
  print("first ${numbers.first}");

  //devuelve un Iterable, se identifica con parentesis
  final reversedNumbers = numbers.reversed;
  print("reversed (iterable) $reversedNumbers");
  print("List ${reversedNumbers.toList()}");
  print("Set ${reversedNumbers.toSet()}");

  final greathersThan5 = numbers.where(
          (int it) { return it >5; }
  );

  print(">5 $greathersThan5");
  print(">5.toSet() ${greathersThan5.toSet()}");



}