import 'package:mangueweb/modules/application/controller/telemetry/battery_controller.dart';
import 'package:mangueweb/modules/application/controller/telemetry/geography_controller.dart';
import 'package:mangueweb/modules/application/controller/telemetry/gyroscope_controller.dart';
import 'package:mangueweb/modules/application/controller/telemetry/powertrain_controller.dart';
import 'package:mangueweb/modules/application/service/telemetry/factory.dart';

PowertrainController instanceOfPowertrainController() =>
    PowertrainController(instaceOfPowertrainHttpService());

BatteryController instanceOfBatteryController() =>
    BatteryController(instanceOfBatteryTelemetryService());

GeographyController instanceOfGeographyController() =>
    GeographyController(instanceOfGeographyTelemetryService());

GyroscopeController instanceOfGyroscopeController() =>
    GyroscopeController(instanceOfGyroscopeTelemetryService());
