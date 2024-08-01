import 'dart:convert';

import 'package:mangueweb/modules/domain/Entity/telemetry/geography.dart';
import 'package:mangueweb/modules/domain/gateway/http.dart';
import 'package:mangueweb/modules/domain/gateway/telemetry/geography_gateway.dart';
import 'package:http/http.dart' as http;

class GeographyHttpGateway implements GeographyGateway {
  final HttpGateway _engine;

  GeographyHttpGateway(this._engine);

  @override
  Future<List<Geography>> getGeography() async {
    final response = _engine.get('telemetry/geography') as http.Response;
    final List<dynamic> jsonArray = jsonDecode(response.body);

    return jsonArray.map((json) => Geography.fromMap(json)).toList();
  }
}
