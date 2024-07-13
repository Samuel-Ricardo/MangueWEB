import 'package:mangueweb/modules/application/gateway/http/dart/gateway.dart';
import 'package:mangueweb/modules/infra/config/env/config.dart';

DartHttpGateway instanceOfDartHttpGateway([String? url]) {
  return DartHttpGateway(url ?? Environment.API_URL);
}
