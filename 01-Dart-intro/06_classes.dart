void main () {
  
  final wolverine = Hero(name: "Wolverines", power: "Garras");
  
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  
  
}

class Hero {
  String power;
  String name;
  
  //constructor
  //Hero (String name, String power) {
  //  this.power = power;
  //  this.name = name;
  //}
  
  //Hero(this.name, this.power);
  Hero({
    required this.name,
    //required this.power = 'Sin poder'
    this.power = 'Sin poder'
    });
  
  //Hero(String pName, String pPower) : name = pName, power = pPower;
  
}