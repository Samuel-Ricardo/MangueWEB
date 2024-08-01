import 'package:mangueweb/modules/application/gateway/http/dart/gateway.dart';
import 'package:mangueweb/modules/application/gateway/telemetry/battery/battery_http_gateway.dart';
import 'package:mangueweb/modules/application/gateway/telemetry/geography/geography_http_gateway.dart';
import 'package:mangueweb/modules/application/gateway/telemetry/gyroscope/gyroscope_http_gateway.dart';
import 'package:mangueweb/modules/application/gateway/telemetry/powertrain/powertrain_http_gateway.dart';
import 'package:mangueweb/modules/domain/gateway/telemetry/battery_gateway.dart';
import 'package:mangueweb/modules/domain/gateway/telemetry/geography_gateway.dart';
import 'package:mangueweb/modules/domain/gateway/telemetry/gyroscope_gateway.dart';
import 'package:mangueweb/modules/domain/gateway/telemetry/powertrain_gateway.dart';

PowertrainGateway instaceOfPowertrainHttpGateway() {
  return PowertrainHttpGateway(DartHttpGateway("http://localhost:3000"));
}

BatteryGateway instaceOfBatteryHttpGateway() {
  return BatteryHttpGateway(DartHttpGateway("http://localhost:3000"));
}

GeographyGateway instaceOfGeographyHttpGateway() {
  return GeographyHttpGateway(DartHttpGateway("http://localhost:3000"));
}

GyroscopeGateway instaceOfGyroscopeHttpGateway() {
  return GyroscopeHttpGateway(DartHttpGateway("http://localhost:3000"));
}
