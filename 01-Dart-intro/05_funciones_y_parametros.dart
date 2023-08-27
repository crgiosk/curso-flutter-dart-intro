void main() {

  print(greetToEveryone());

  print("Sume ${sume(10,20)}");
  print("SumeLamda ${sumLamda(30,20)}");

  print("sumaOptionalParameters ${sumaOptionalParameters(30)}");


}

String greetToEveryone() => "Hello evryone";

//daria error porque no se especifica el tipo del parametro
//print("Sume ${sume(10,"20")}");
int sume(int num1, int num2) {
  return num1+num2;
}

int sumLamda(int num1, int num2) => num1+num2;

//int sumaOptionalParameters(int num1, [int? num2]) {
int sumaOptionalParameters(int num1, [int num2 = 10]) {
  //num2 ?? 10;

  return num1 + num2;

}