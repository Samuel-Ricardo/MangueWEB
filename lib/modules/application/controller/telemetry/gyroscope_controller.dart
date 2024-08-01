import 'package:mangueweb/modules/domain/Entity/telemetry/gyroscope.dart';
import 'package:mangueweb/modules/domain/service/telemetry/gyroscope_service.dart';

class GyroscopeController {
  final GyroscopeService _service;

  GyroscopeController(this._service);

  Future<List<Gyroscope>> readTelemetry() async {
    return await _service.readGyroscopeTelemetry();
  }
}
