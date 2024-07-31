import 'package:mangueweb/modules/domain/Entity/telemetry/battery.dart';

abstract class BatteryGateway {
  Future<List<Battery>> getBattery();
}
