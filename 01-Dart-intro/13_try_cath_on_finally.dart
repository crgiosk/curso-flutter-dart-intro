void main () async {
  print("inicio del programa");


  try {
    final response = await httpGet("'url.com'");

    print("Respuesta exitosa $response");
  } on Exception catch(e) {
    //cuando ocurre un error esperado: throw Exception
    //un error controlado
    print("Hay una excepcion: $e");
  } catch (e) {
    //cuando ocurre un error inesperado: throw
    print("tnemos un error inesperado: $e");
  } finally {
    print("Fin del trycatch");
  }


  print("Fin del programa");
}

//Future palabra reservada para decir que se va a retornar un valor asyncrono
//una funcion asyn nunca va a retornar un valor primitivo, siempre un Future<*>
Future<String> httpGet(String url) async {
  await Future.delayed( const Duration(seconds: 3));

  //throw Exception es cuando quiero hacer asserts por decirlo de alguna manera
  //y devolver un mensaje/tipo de error
  throw Exception("No hay parametros en el url");

  //throw es un error no controlado, puede pasar por que si;
  //una division en 0 o una operacion mat con un string
  throw "error en la http";
  //return "Valor de la peticion: {}";
}