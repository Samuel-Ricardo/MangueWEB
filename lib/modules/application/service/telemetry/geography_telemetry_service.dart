import 'package:mangueweb/modules/application/use_case/telemetry/geogragphy/read_geography_telemetry.dart';
import 'package:mangueweb/modules/domain/Entity/telemetry/geography.dart';
import 'package:mangueweb/modules/domain/service/telemetry/geography_service.dart';

class GeographyTelemetryService extends GeographyService {
  final ReadGeographyTelemetryByHttpUseCase _read;

  GeographyTelemetryService(this._read);

  @override
  Future<List<Geography>> readGeographyTelemetry() async {
    return await _read.execute();
  }
}
