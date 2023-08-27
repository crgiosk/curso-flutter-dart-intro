void main() {
  final String pokemon = 'Titto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  //final sprites = ['impostor'];
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];
  //dynamic es un tipo de variable que puede tomar cualquier valor, muy parecido
  // al any en kotlin
  dynamic errorMessage = "Message";
  errorMessage = true;
  //lista
  errorMessage = [1,2,3,4,5];
  //set de datos
  errorMessage = {1,2,3,4,5};
  //una funcion que retorna un true (parecido al lamda?)
  errorMessage = () => true;
  errorMessage = null;

  //con 3 lineas, se le dice a dart, que se va a hacer un String multilinea
  print("""
  $pokemon
  $hp
  $isAlive
  $isAlive
  $abilities
  $sprites
  $errorMessage
  
  """
  );
}