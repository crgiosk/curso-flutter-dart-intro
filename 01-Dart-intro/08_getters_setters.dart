void main() {

  final square = Square(side: 20);
  print("calculate area = ${square.calculateArea()}");

  //asi se usan los sets
  square.sideSet = 30;
  print("Get area ${square.sideGet}");

  //call to throw
  //square.sideSet = -1;
}

class Square {


  // cuando una variable empieza con " _ ", esa variable es privada.
  double _side;


  Square({required double side}): _side = side;

  //getter de toda la vida, pero con diferente sintaxis
  double get sideGet => _side;

  //setter de toda la vida
  set sideSet(double side) {
    print(side);
    if (side < 0) throw "Value must be >0";
    _side = side;
  }


  double calculateArea() => _side * _side;
}