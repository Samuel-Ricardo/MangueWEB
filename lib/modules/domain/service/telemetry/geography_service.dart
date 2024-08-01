import 'package:mangueweb/modules/domain/Entity/telemetry/geography.dart';

abstract class GeographyService {
  Future<List<Geography>> readGeographyTelemetry();
}
