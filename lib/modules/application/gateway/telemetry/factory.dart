import 'package:mangueweb/modules/application/gateway/http/dart/gateway.dart';
import 'package:mangueweb/modules/application/gateway/telemetry/battery/battery_http_gateway.dart';
import 'package:mangueweb/modules/application/gateway/telemetry/powertrain/powertrain_http_gateway.dart';
import 'package:mangueweb/modules/domain/gateway/telemetry/battery_gateway.dart';
import 'package:mangueweb/modules/domain/gateway/telemetry/powertrain_gateway.dart';

PowertrainGateway instaceOfPowertrainHttpGateway() {
  return PowertrainHttpGateway(DartHttpGateway("http://localhost:3000"));
}

BatteryGateway instaceOfBatteryHttpGateway() {
  return BatteryHttpGateway(DartHttpGateway("http://localhost:3000"));
}
