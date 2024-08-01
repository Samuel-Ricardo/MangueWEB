import 'package:mangueweb/modules/application/service/telemetry/battery_telemetry_service.dart';
import 'package:mangueweb/modules/application/service/telemetry/geography_telemetry_service.dart';
import 'package:mangueweb/modules/application/service/telemetry/gyroscope_telemetry_service.dart';
import 'package:mangueweb/modules/application/service/telemetry/powertrain_telemetry_service.dart';
import 'package:mangueweb/modules/application/use_case/telemetry/factory.dart';

PowertrainHttpService instaceOfPowertrainHttpService() =>
    PowertrainHttpService(instaceOfReadPowertrainByHttpTelemetryUseCase());

BatteryTelemetryService instanceOfBatteryTelemetryService() =>
    BatteryTelemetryService(instaceOfReadBatteryByHttpTelemetryUseCase());

GeographyTelemetryService instanceOfGeographyTelemetryService() =>
    GeographyTelemetryService(instaceOfReadGeographyByHttpTelemetryUseCase());

GyroscopeTelemetryService instanceOfGyroscopeTelemetryService() =>
    GyroscopeTelemetryService(instaceOfReadGyroscopeByHttpTelemetryUseCase());
