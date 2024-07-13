import 'package:http/http.dart' as http;
import 'package:mangueweb/modules/domain/gateway/http.dart';

class DartHttpGateway implements HttpGateway {
  final Uri _url;

  DartHttpGateway(String url) : _url = Uri.parse(url);

  @override
  Future<http.Response> get() async {
    var result = await http.get(_url);
    return result;
  }

  @override
  Future<http.Response> post(Object data) async {
    var result = await http.post(_url, body: data);
    return result;
  }

  @override
  Future<http.Response> put(Object data) async {
    var result = await http.put(_url, body: data);
    return result;
  }
}
