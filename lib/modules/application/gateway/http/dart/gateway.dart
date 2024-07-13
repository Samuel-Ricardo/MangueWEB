import 'package:http/http.dart' as http;
import 'package:mangueweb/modules/domain/gateway/http.dart';

class DartHttpGateway implements HttpGateway {
  final Uri _url;

  DartHttpGateway(String url) : _url = Uri.parse(url);

  @override
  Future<http.Response> get() async {
    return await http.get(_url);
  }

  @override
  Future<http.Response> post(Object data) async {
    return await http.post(_url, body: data);
  }

  @override
  Future<http.Response> put(Object data) async {
    return await http.put(_url, body: data);
  }

  @override
  Future<http.Response> patch(Object data) async {
    return await http.patch(_url, body: data);
  }

  @override
  Future<http.Response> delete() async {
    return await http.delete(_url);
  }
}
