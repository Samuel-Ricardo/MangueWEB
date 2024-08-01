import 'package:mangueweb/modules/domain/Entity/telemetry/geography.dart';
import 'package:mangueweb/modules/domain/gateway/telemetry/geography_gateway.dart';
import 'package:mangueweb/modules/domain/use_case/telemetry/geography/read_geography_telemetry.dart';

class ReadGeographyTelemetryByHttpUseCase
    implements ReadGeographyTelemetryUseCase {
  final GeographyGateway _gateway;

  ReadGeographyTelemetryByHttpUseCase(this._gateway);

  @override
  Future<List<Geography>> execute() async {
    return await _gateway.getGeography();
  }
}
