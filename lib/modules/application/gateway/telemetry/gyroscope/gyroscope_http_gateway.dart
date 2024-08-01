import 'dart:convert';

import 'package:mangueweb/modules/domain/Entity/telemetry/gyroscope.dart';
import 'package:mangueweb/modules/domain/gateway/http.dart';
import 'package:mangueweb/modules/domain/gateway/telemetry/gyroscope_gateway.dart';
import 'package:http/http.dart' as http;

class GyroscopeHttpGateway implements GyroscopeGateway {
  final HttpGateway _engine;

  GyroscopeHttpGateway(this._engine);

  @override
  Future<List<Gyroscope>> getGyroscope() async {
    final response = _engine.get('telemetry/gyroscope') as http.Response;
    final List<dynamic> jsonArray = jsonDecode(response.body);

    return jsonArray.map((json) => Gyroscope.fromMap(json)).toList();
  }
}
