import 'package:mangueweb/modules/domain/Entity/telemetry/battery.dart';
import 'package:mangueweb/modules/domain/gateway/telemetry/battery_gateway.dart';
import 'package:mangueweb/modules/domain/use_case/telemetry/battery/read_battery_telemetry.dart';

class ReadBatteryTelemetryByHttpUseCase implements ReadBatteryTelemetryUseCase {
  final BatteryGateway _gateway;

  ReadBatteryTelemetryByHttpUseCase(this._gateway);

  @override
  Future<List<Battery>> execute() async {
    return _gateway.getBattery();
  }
}
