import 'aircraft.dart';
import 'motor_vehicles.dart';
import 'seaplane.dart';
import 'watercraft.dart';

main(){
  print("Aircraft Boeing 747");
  final boeing747 = Aircraft();
  // The Boeing 747 can:
  boeing747.runOnRoad();
  boeing747.fly();

  print("\nSeaplane Cessna 120/140");
  final cessna120_140 = Seaplane();
  // The Cessna 120/140 can:
  cessna120_140.runOnRoad();
  cessna120_140.moveOnWater();
  cessna120_140.fly();

  print("\nMotorVehicles Tesla Roadster 2020");
  final teslaRoadster = MotorVehicles();
  // The Tesla Roadster 2020 can:
  teslaRoadster.runOnRoad();

  print("\nWatercraft Cabin Cruiser");
  final cabinCruiser = Watercraft();
  // The Cabin Cruiser can:
  cabinCruiser.moveOnWater();
}
