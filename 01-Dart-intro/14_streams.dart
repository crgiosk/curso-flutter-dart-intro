void main() {

  emitNumbers(5).listen(
    //lamda para manejar la respuesta del emid
          (it) {
        print("Valor recibido del stream = $it");
      }
  );
}

Stream<int> emitNumbers(int limitNumbers) {

  return Stream.periodic(
    //cada cuanto se emitira el proximo valor
      const Duration(seconds: 1),
      //lamda para manejar el valor y retornaro
          (number) {
        print("from Stream.periodic()");
        return number;
        //si no se agrega un limit, como en este caso "take",
        //el stream seguira emitiendo hasta el infinito o hasta que haya una exception
      }).take(limitNumbers);
}