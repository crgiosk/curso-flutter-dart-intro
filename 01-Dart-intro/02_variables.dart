void main() {
  final String pokemon = 'Titto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  //final sprites = ['impostor'];
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];



  //con 3 lineas, se le dice a dart, que se va a hacer un String multilinea
  print("""
  $pokemon
  $hp
  $isAlive
  $isAlive
  $abilities
  $sprites
  
  """
  );
}