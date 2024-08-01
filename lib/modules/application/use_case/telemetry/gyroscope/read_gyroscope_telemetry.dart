import 'package:mangueweb/modules/domain/Entity/telemetry/gyroscope.dart';
import 'package:mangueweb/modules/domain/gateway/telemetry/gyroscope_gateway.dart';
import 'package:mangueweb/modules/domain/use_case/telemetry/gyroscope/read_gyroscope_telemetry.dart';

class ReadGyroscopeTelemetryByHttpUseCase
    implements ReadGyroscopeTelemetryUseCase {
  final GyroscopeGateway _gateway;

  ReadGyroscopeTelemetryByHttpUseCase(this._gateway);

  @override
  Future<List<Gyroscope>> execute() async {
    return await _gateway.getGyroscope();
  }
}
