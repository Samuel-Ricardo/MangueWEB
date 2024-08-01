import 'package:mangueweb/modules/domain/Entity/telemetry/gyroscope.dart';

abstract class GyroscopeGateway {
  Future<List<Gyroscope>> getGyroscope();
}
