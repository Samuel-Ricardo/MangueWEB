import 'package:mangueweb/modules/domain/Entity/telemetry/gyroscope.dart';

abstract class GyroscopeService {
  Future<List<Gyroscope>> readGyroscopeTelemetry();
}
