import 'package:mangueweb/modules/domain/Entity/telemetry/gyroscope.dart';
import 'package:mangueweb/modules/domain/service/telemetry/gyroscope_service.dart';
import 'package:mangueweb/modules/domain/use_case/telemetry/gyroscope/read_gyroscope_telemetry.dart';

class GyroscopeTelemetryService implements GyroscopeService {
  final ReadGyroscopeTelemetryUseCase _read;

  GyroscopeTelemetryService(this._read);

  @override
  Future<List<Gyroscope>> readGyroscopeTelemetry() async {
    return await _read.execute();
  }
}
