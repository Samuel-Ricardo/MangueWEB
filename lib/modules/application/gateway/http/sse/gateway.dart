import 'dart:convert';

import 'package:mangueweb/modules/domain/gateway/http.dart';
import 'package:mangueweb/modules/domain/gateway/sse.dart';
import 'package:http/http.dart' as http;

class NativeServerSentEventsGateway implements SSEGateway {
  final HttpGateway _engine;

  NativeServerSentEventsGateway(this._engine);

  @override
  Stream<String> subscribe([String? path]) async* {
    final response = await _engine.get(path, {
      'Accept': 'text/event-stream',
    }) as http.StreamedResponse;

    if (response.statusCode == 200) {
      await for (var data in response.stream.transform(utf8.decoder)) {
        yield data;
      }
    } else {
      throw Exception('Failed to connect to the server');
    }
  }
}
