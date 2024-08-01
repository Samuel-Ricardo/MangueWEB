import 'package:mangueweb/modules/domain/Entity/telemetry/gyroscope.dart';

abstract class ReadGyroscopeTelemetryUseCase {
  Future<List<Gyroscope>> execute();
}
