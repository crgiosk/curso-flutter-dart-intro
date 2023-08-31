void main () async {
  print("inicio del programa");


  try {
    final response = await httpGet("'url.com'");

    print(response);
  } catch (error) {
    print("tnemos un error: $error");
  }


  print("Fin del programa");
}

//una funcion asyn nunca va a retornar un valor primitivo, siempre un Future<*>
Future<String> httpGet(String url) async {
  await Future.delayed( const Duration(seconds: 3));

  throw "error en la http";
  //return "Valor de la peticion: {}";
}