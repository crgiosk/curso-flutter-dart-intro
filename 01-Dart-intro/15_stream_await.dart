void main() {
  emitNumbers().listen((int it) {
    print("value from emit $it");
  });
}


//asyn* me dice que va a retornar un stream asyncrono?
//asyn* significa que puede generar una secuencia de valores a lo largo del tiempo,
//en lugar de devolver un solo valor inmediatamente.


Stream<int> emitNumbers() async* {

  final numbers = [1,2,3,4,5];
  for (var it in numbers) {
    await Future.delayed(const Duration(seconds: 1));
    yield it;
  }
}