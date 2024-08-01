import 'package:universal_html/html.dart';

abstract class GyroscopeGateway {
  Future<List<Gyroscope>> getGyroscope();
}
