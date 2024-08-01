import 'package:mangueweb/modules/domain/Entity/telemetry/geography.dart';

abstract class ReadGeographyTelemetryUseCase {
  Future<List<Geography>> execute();
}
