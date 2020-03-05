import '../mixins/fly.dart';
import '../mixins/move_on_water.dart';
import '../mixins/run_on_road.dart';
import 'transport.dart';

class Seaplane extends Transport with MoveOnWater, Fly, RunOnRoad { }