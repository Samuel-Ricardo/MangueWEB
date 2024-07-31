import 'package:mangueweb/modules/domain/Entity/telemetry/battery.dart';

abstract class BatteryService {
  Future<List<Battery>> readBatteryTelemetry();
}
