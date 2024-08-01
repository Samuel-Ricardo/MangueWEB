import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mangueweb/modules/domain/Entity/telemetry/battery.dart';
import 'package:mangueweb/modules/domain/gateway/http.dart';
import 'package:mangueweb/modules/domain/gateway/telemetry/battery_gateway.dart';

class BatteryHttpGateway implements BatteryGateway {
  final HttpGateway _engine;

  BatteryHttpGateway(this._engine);

  @override
  Future<List<Battery>> getBattery() async {
    final response = await _engine.get('telemetry/battery') as http.Response;
    final List<dynamic> jsonArray = jsonDecode(response.body);

    return jsonArray.map((json) => Battery.fromMap(json)).toList();
  }
}
