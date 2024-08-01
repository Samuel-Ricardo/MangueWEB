import 'package:mangueweb/modules/domain/Entity/telemetry/battery.dart';
import 'package:mangueweb/modules/domain/service/telemetry/battery_service.dart';
import 'package:mangueweb/modules/domain/use_case/telemetry/battery/read_battery_telemetry.dart';

class BatteryTelemetryService implements BatteryService {
  final ReadBatteryTelemetryUseCase _read;

  BatteryTelemetryService(this._read);

  @override
  Future<List<Battery>> readBatteryTelemetry() async {
    return await _read.execute();
  }
}
