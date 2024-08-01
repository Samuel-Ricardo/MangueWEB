import 'package:mangueweb/modules/domain/Entity/telemetry/geography.dart';
import 'package:mangueweb/modules/domain/service/telemetry/geography_service.dart';

class GeographyController {
  final GeographyService _service;

  GeographyController(this._service);

  Future<List<Geography>> readGeographyTelemetry() async {
    return await _service.readGeographyTelemetry();
  }
}
