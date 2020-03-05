import '../mixins/fly.dart';
import '../mixins/run_on_road.dart';
import 'vehicles.dart';

class Aircraft extends Vehicles with RunOnRoad, Fly { }
