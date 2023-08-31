void main() {

  final windPlante = WindPlant(initialEnergdy: 100);

  final nuclear = NuclearPlant(energyLeft: 1000);

  print("windLeft = ${windPlante.energyLeft}");
  print("charging phone...");
  print("windLeft = ${chargePhone(windPlante)}");
  print("charging phone...");
  print("nuclear = ${nuclear.energyLeft}");
  print("nuclear = ${chargePhone(nuclear)}");


}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft <10 ) {
    throw Exception("Sin suficiente energia");
  }

  return plant.energyLeft - 10;
}

enum PlantType {
  nuclear, water, wind, none
}

abstract class EnergyPlant {

  double energyLeft;

  final PlantType type;

  EnergyPlant({
    required this.energyLeft,
    required this.type
  }) : assert(energyLeft > 0, "energyLeft msut be >0"),
        assert(type != PlantType.none, "type must be not none");

  void consumeEnergy( double amountEnergy);
}

class WindPlant extends EnergyPlant {

  WindPlant({required double initialEnergdy})
      : super(energyLeft: initialEnergdy, type: PlantType.wind);

  @override
  void consumeEnergy(double amountEnergy) {
    energyLeft -= amountEnergy;

  }
}

//implements me permite solo implemenar los metodos y los atributos
class NuclearPlant implements EnergyPlant {

  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({
    required this.energyLeft
  });

  @override
  void consumeEnergy( double amountEnergy) {
    energyLeft = (amountEnergy * 0.5);
  }


}