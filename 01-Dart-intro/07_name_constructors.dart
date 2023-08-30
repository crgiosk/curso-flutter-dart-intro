void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Ironman',
    'power': 'Money',
    'isAlive': true
  };

  final wolverines = Hero(
    name: "Wolverines",
    power: "Garras",
    //en caso de que el valo venga null, se establece false por defecto
    //isAlive: rawJson['isAlivee'] ?? false
  );

  final ironman = Hero.fromJson(rawJson);

  print(wolverines);
  print(ironman);
}

class Hero {
  String power;
  String name;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    this.isAlive = true
  });

  //otro tipo de constructor
  //puedo renombrar constructores haciendo referencia de que intancia va a retornar
  //es decir, dependiendo de los params, como voy a devolver

  Hero.fromJson(Map<String, dynamic> response)
      : name = response['name'] ?? 'Name not found',
        power = response['power'] ?? 'Power not found',
        isAlive = response['isAlive'] ?? 'Not found';


  @override
  String toString() =>
      '$name, $power, is alive: ${ isAlive ? 'YES!' : 'Nope' } ';

}