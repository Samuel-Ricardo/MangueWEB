import 'package:mangueweb/modules/domain/Entity/telemetry/battery.dart';
import 'package:mangueweb/modules/domain/service/telemetry/battery_service.dart';

class BatteryController {
  final BatteryService _service;

  BatteryController(this._service);

  Future<List<Battery>> readBatteryTelemetry() async {
    return await _service.readBatteryTelemetry();
  }
}
