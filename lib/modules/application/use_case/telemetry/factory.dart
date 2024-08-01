import 'package:mangueweb/modules/application/gateway/telemetry/factory.dart';
import 'package:mangueweb/modules/application/use_case/telemetry/battery/read_battery_telemetry.dart';
import 'package:mangueweb/modules/application/use_case/telemetry/geogragphy/read_geography_telemetry.dart';
import 'package:mangueweb/modules/application/use_case/telemetry/powertrain/read_powertrain_telemetry.dart';

ReadPowertrainTelemetryByHttpUseCase
    instaceOfReadPowertrainByHttpTelemetryUseCase() =>
        ReadPowertrainTelemetryByHttpUseCase(instaceOfPowertrainHttpGateway());

ReadBatteryTelemetryByHttpUseCase
    instaceOfReadBatteryByHttpTelemetryUseCase() =>
        ReadBatteryTelemetryByHttpUseCase(instaceOfBatteryHttpGateway());

ReadGeographyTelemetryByHttpUseCase
    instaceOfReadGeographyByHttpTelemetryUseCase() =>
        ReadGeographyTelemetryByHttpUseCase(instaceOfGeographyHttpGateway());
