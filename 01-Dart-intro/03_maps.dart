 void main () {
   final Map<String, dynamic> pokemon = {
     'name': "Titto",
     'hp': 100,
     'isAlive': true,
     'abilities': ['impostor'],
     'sprites': {
       1: 'ditto/front.png',
       2: 'ditto/back.png'
         
     }
   };
   
   print(pokemon);
   
   print("Name: ${pokemon['isAlive']}");
   print("back: ${pokemon['sprites'][1]}");
   print("front: ${pokemon['sprites'][2]}");
   
 }