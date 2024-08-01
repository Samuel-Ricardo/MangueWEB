import 'package:universal_html/html.dart';

abstract class ReadGyroscopeTelemetryUseCase {
  Future<List<Gyroscope>> execute();
}
