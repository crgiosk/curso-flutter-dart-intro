void main() {

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