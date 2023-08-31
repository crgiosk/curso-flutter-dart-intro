void main() {

  final windPlante = WindPlant(initialEnergdy: 100);


  print("windLeft = ${windPlante.energyLeft}");
  print("charging phone...");
  print("windLeft = ${chargePhone(windPlante)}");


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

  PlantType type;

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