import 'package:mangueweb/modules/domain/Entity/telemetry/battery.dart';

abstract class ReadBatteryTelemetryUseCase {
  Future<List<Battery>> execute();
}
