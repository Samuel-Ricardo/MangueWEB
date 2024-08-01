import 'package:mangueweb/modules/domain/Entity/telemetry/geography.dart';

abstract class GeographyGateway {
  Future<List<Geography>> getGeography();
}
